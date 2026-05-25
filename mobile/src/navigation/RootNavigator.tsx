import React from 'react';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import { createStackNavigator } from '@react-navigation/stack';
import { useTokens } from '../theme/useTokens';
import { Icon } from '../components/icons';

import HomeScreen from '../screens/Home';
import WordCardScreen from '../screens/WordCard';
import SentenceCardScreen from '../screens/SentenceCard';
import QuizScreen from '../screens/Quiz';
import StatsScreen from '../screens/Stats';
import ProfileScreen from '../screens/Profile';

const Tab = createBottomTabNavigator();
const Stack = createStackNavigator();

function TabNavigator() {
  const T = useTokens();
  return (
    <Tab.Navigator
      screenOptions={{
        headerShown: false,
        tabBarStyle: {
          backgroundColor: T.bg2,
          borderTopColor: T.hair,
          borderTopWidth: 1,
          height: 56,
          paddingBottom: 6,
          paddingTop: 6,
        },
        tabBarActiveTintColor: T.accent,
        tabBarInactiveTintColor: T.textMute,
        tabBarShowLabel: false,
      }}
    >
      <Tab.Screen
        name="Home"
        component={HomeScreen}
        options={{ tabBarIcon: ({ color }) => <Icon.home color={color} size={24} /> }}
      />
      <Tab.Screen
        name="Stats"
        component={StatsScreen}
        options={{ tabBarIcon: ({ color }) => <Icon.chart color={color} size={24} /> }}
      />
      <Tab.Screen
        name="Profile"
        component={ProfileScreen}
        options={{ tabBarIcon: ({ color }) => <Icon.user color={color} size={24} /> }}
      />
    </Tab.Navigator>
  );
}

export default function RootNavigator() {
  return (
    <Stack.Navigator screenOptions={{ headerShown: false, cardStyle: { flex: 1 } }}>
      <Stack.Screen name="Tabs" component={TabNavigator} />
      <Stack.Screen
        name="WordCard"
        component={WordCardScreen}
        options={{ presentation: 'modal' }}
      />
      <Stack.Screen
        name="SentenceCard"
        component={SentenceCardScreen}
        options={{ presentation: 'modal' }}
      />
      <Stack.Screen
        name="Quiz"
        component={QuizScreen}
        options={{ presentation: 'modal' }}
      />
    </Stack.Navigator>
  );
}
