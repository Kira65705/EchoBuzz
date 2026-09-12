import 'package:flutter/material.dart';

import '../models/character.dart';
import '../models/chat_session.dart';
import '../models/user_profile.dart';

const guestProfile = UserProfile(
  displayName: 'Tourist 396AD7',
  friendCode: '396AD7',
  energy: 35,
  language: 'English',
);

const tagCategories = <String>[
  'Category',
  'Hype',
  'Yiff',
  'Story',
  'Casual',
];

const mockCharacters = <Character>[
  Character(
    id: 'char_1',
    name: 'Character',
    handle: '@V',
    author: 'Max',
    description: 'Character description here goes…',
    intro:
        'Your friends set you up on a group outing to help you unwind. What you don’t know is that they also invited Nova, a confident new teammate who has a lot to say.',
    chatCountLabel: '256',
    coverColors: [Color(0xFFC47A3A), Color(0xFF5A3318)],
    category: 'Category',
  ),
  Character(
    id: 'char_2',
    name: 'Hayra y Houra',
    handle: '@V',
    author: 'jack',
    description: 'You are a trainee of the mysterious twin guardian…',
    intro:
        'You are a trainee assigned to the twin guardians. Hayra watches quietly from the lantern-lit hall, waiting to see how you handle your first night on duty.',
    chatCountLabel: '256',
    coverColors: [Color(0xFF3A2A48), Color(0xFFE8C4B0)],
    category: 'Hype',
  ),
  Character(
    id: 'char_3',
    name: 'Katalyn',
    handle: '@V',
    author: 'Avocado.Toast.CEO',
    description: 'Your tomboy catgirl best friend with a mind of her o…',
    intro:
        'Katalyn bursts into the room with a grin, already talking about the next challenge. She expects you to keep up.',
    chatCountLabel: '256',
    coverColors: [Color(0xFF8B3A5C), Color(0xFF2B1A28)],
    category: 'Yiff',
  ),
  Character(
    id: 'char_4',
    name: 'Character',
    handle: '@V',
    author: 'jack',
    description: 'Lost in a raging storm within a forgotten forest, you…',
    intro:
        'Rain hammers the forgotten forest. A pale figure steps from the trees and offers a gloved hand before the storm swallows the path behind you.',
    chatCountLabel: '256',
    coverColors: [Color(0xFFC9B8A8), Color(0xFF4A5560)],
    category: 'Story',
  ),
  Character(
    id: 'char_5',
    name: 'MHA(my hero academy)',
    handle: '@V',
    author: 'Max',
    description:
        'My Hero Academia (Boku no Hero Academia, BNHA) Role-playing game. You are newly…',
    intro:
        'Welcome to U.A. The orientation bell just rang. A classmate with green hair jogs over, notebook in hand, ready to start today’s training.',
    chatCountLabel: '163.5K',
    coverColors: [Color(0xFF2F8A4A), Color(0xFF1B3D28)],
    category: 'Hype',
  ),
  Character(
    id: 'char_6',
    name: 'Zara and Nina',
    handle: '@V',
    author: 'jack',
    description:
        'Two starving runaway girls break into your kitchen at 2:47 AM. You catch them red handed devouring…',
    intro:
        'The kitchen light clicks on. Two runaway girls freeze over an open fridge at 2:47 AM, arguing in whispers about who took the last leftover.',
    chatCountLabel: '158.4K',
    coverColors: [Color(0xFF6B4A3A), Color(0xFF1E1614)],
    category: 'Story',
  ),
  Character(
    id: 'char_7',
    name: 'Sakura',
    handle: '@V',
    author: 'Avocado.Toast.CEO',
    description:
        'A proud Fox Spirit beauty who loathes humans is forced into a government-mandated…',
    intro:
        'Sakura folds her arms, tails flicking. She made it clear she does not enjoy this assignment, but she will complete it anyway.',
    chatCountLabel: '155.7K',
    coverColors: [Color(0xFF3D4A88), Color(0xFF1A2038)],
    category: 'Yiff',
  ),
  Character(
    id: 'char_8',
    name: 'Josie',
    handle: '@V',
    author: 'Avocado.Toast.CEO',
    description:
        'Your neighbor, due to practical difficulties, suggested that we take baths together in the…',
    intro:
        'Josie knocks once, then leans in the doorway with a practical smile. She already has a plan for sharing chores this week.',
    chatCountLabel: '151.8K',
    coverColors: [Color(0xFF8A6A48), Color(0xFF2A2218)],
    category: 'Casual',
  ),
  Character(
    id: 'char_9',
    name: 'Lupine_Luna',
    handle: '@V',
    author: 'Studio Nova',
    description: 'A sharp-tongued companion who never lets an easy compliment pass.',
    intro:
        'Your friends set you up on a blind date to “help you get out of the funk.” What you don’t know is that, as a joke (or to make sure it “turns out right”), they hired Nova, a high-end professional escort. Nova is…',
    chatCountLabel: '136.3K',
    coverColors: [Color(0xFF1A8A8A), Color(0xFF123038)],
    category: 'Category',
  ),
];

const mockSessions = <ChatSession>[
  ChatSession(
    id: 'session_1',
    characterId: 'char_5',
    preview: 'My Hero Academia (Boku no Hero Academia, BNHA)…',
    timeLabel: '5 min',
  ),
  ChatSession(
    id: 'session_2',
    characterId: 'char_5',
    preview: 'My Hero Academia (Boku no Hero Academia, BNHA)…',
    timeLabel: '5 min',
  ),
  ChatSession(
    id: 'session_3',
    characterId: 'char_5',
    preview: 'My Hero Academia (Boku no Hero Academia, BNHA)…',
    timeLabel: '5 min',
  ),
  ChatSession(
    id: 'session_4',
    characterId: 'char_9',
    preview: 'A low, guttural growl rumbles from deep in her chest…',
    timeLabel: '5 min',
  ),
  ChatSession(
    id: 'session_5',
    characterId: 'char_2',
    preview: 'You are a trainee of the mysterious twin guardian…',
    timeLabel: '12 min',
  ),
  ChatSession(
    id: 'session_6',
    characterId: 'char_3',
    preview: 'Katalyn is already waiting outside.',
    timeLabel: '1 h',
  ),
];

const mockAiReplies = <String>[
  'A low, guttural growl rumbles from deep in her chest as her ears flatten against her skull. She takes a step closer, invading your personal space, her crimson eyes burning with fury.\n\n"Pool? Tch. Don\'t flatter yourself. I\'d make it look like an accident. A little…. workplace incident."-\n\nHer lips curl into a vicious smirk, revealing a flash of fang.\n\n"Besides, you think I\'d let you off that easy? I want to see the look on your face when you realize you\'re stuck with me all night."',
  'She tilts her head, studying you like a puzzle she has already solved.\n\n"Noted. Say that again and I might actually believe you meant it."',
  'A short laugh. Then she looks away, voice dropping.\n\n"Fine. I\'ll play along — but you go first."',
  'She taps her fingers against her arm, impatient and amused.\n\n"Is that your best line? Try harder. I\'m still here."',
];

Character characterById(String id) {
  return mockCharacters.firstWhere(
    (c) => c.id == id,
    orElse: () => mockCharacters.first,
  );
}
