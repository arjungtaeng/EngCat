import React, { useEffect } from 'react';
import { View } from 'react-native';
import { StatusBar } from 'expo-status-bar';
import { useFonts } from 'expo-font';
import { NavigationContainer } from '@react-navigation/native';
import { GestureHandlerRootView } from 'react-native-gesture-handler';
import { SafeAreaProvider } from 'react-native-safe-area-context';

import RootNavigator from './src/navigation/RootNavigator';
import { useCardsStore } from './src/store/useCardsStore';
import { SEED_WORDS, SEED_SENTENCES } from './src/data/cards';

function AppContent() {
  const { setWords, setSentences, setExpressions } = useCardsStore();

  useEffect(() => {
    setWords(SEED_WORDS);
    setSentences(SEED_SENTENCES);
    setExpressions(SEED_SENTENCES);
  }, [setWords, setSentences, setExpressions]);

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
