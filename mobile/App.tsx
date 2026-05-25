import React, { useEffect, useState } from 'react';
import { View, Text } from 'react-native';
import { StatusBar } from 'expo-status-bar';
import { useFonts } from 'expo-font';
import { NavigationContainer } from '@react-navigation/native';
import { GestureHandlerRootView } from 'react-native-gesture-handler';
import { SafeAreaProvider } from 'react-native-safe-area-context';

import RootNavigator from './src/navigation/RootNavigator';
import { useCardsStore } from './src/store/useCardsStore';
import { useUserStore } from './src/store/useUserStore';
import { SEED_WORDS, SEED_SENTENCES } from './src/data/cards';
import { loadCardsFromSupabase } from './src/services/supabase';

function AppContent() {
  const { setWords, setSentences, setExpressions } = useCardsStore();
  const level = useUserStore(s => s.level);
  const [status, setStatus] = useState<'loading' | 'done' | 'fallback'>('loading');

  useEffect(() => {
    let cancelled = false;

    (async () => {
      try {
        const result = await loadCardsFromSupabase(level);
        if (cancelled) return;

        const hasData = result.words.length > 0 || result.expressions.length > 0;
        if (hasData) {
          setWords(result.words);
          setSentences(result.sentences);
          setExpressions(result.expressions);
          setStatus('done');
        } else {
          setWords(SEED_WORDS);
          setSentences(SEED_SENTENCES);
          setExpressions(SEED_SENTENCES);
          setStatus('fallback');
        }
      } catch {
        if (cancelled) return;
        setWords(SEED_WORDS);
        setSentences(SEED_SENTENCES);
        setExpressions(SEED_SENTENCES);
        setStatus('fallback');
      }
    })();

    return () => { cancelled = true; };
  }, [level, setWords, setSentences, setExpressions]);

  if (status === 'loading') {
    return (
      <View style={{ flex: 1, backgroundColor: '#0D0D11', alignItems: 'center', justifyContent: 'center' }}>
        <Text style={{ color: 'rgba(248,245,239,0.5)', fontSize: 13, letterSpacing: 1 }}>
          데이터 불러오는 중...
        </Text>
      </View>
    );
  }

  return <RootNavigator />;
}

export default function App() {
  const [fontsLoaded] = useFonts({
    Pretendard:              require('./assets/fonts/Pretendard-Regular.otf'),
    'Pretendard-Medium':     require('./assets/fonts/Pretendard-Medium.otf'),
    'Pretendard-Bold':       require('./assets/fonts/Pretendard-Bold.otf'),
    InstrumentSerif:         require('./assets/fonts/InstrumentSerif-Regular.ttf'),
    'InstrumentSerif-Italic': require('./assets/fonts/InstrumentSerif-Italic.ttf'),
    Outfit:                  require('./assets/fonts/Outfit-Variable.ttf'),
    Raleway:                 require('./assets/fonts/Raleway-Variable.ttf'),
    JetBrainsMono:           require('./assets/fonts/JetBrainsMono-Variable.ttf'),
  });

  if (!fontsLoaded) {
    return <View style={{ flex: 1, backgroundColor: '#0D0D11' }} />;
  }

  return (
    <GestureHandlerRootView style={{ flex: 1 }}>
      <SafeAreaProvider>
        <NavigationContainer>
          <StatusBar style="light" />
          <AppContent />
        </NavigationContainer>
      </SafeAreaProvider>
    </GestureHandlerRootView>
  );
}
