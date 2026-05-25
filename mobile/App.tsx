import React, { useEffect } from 'react';
import { StatusBar } from 'expo-status-bar';
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
