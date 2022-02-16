clc;

% this project is based on the game called Hangman, a word guessing game.

% introduction and instructions to be printed

fprintf('Welcome to Hangman! \n');
fprintf('You have 6 letters to input and you must try to guess what the word is.\n');

% set variable 'word'
word = 'lightsaber';

% read how many characters in word
wordLength = length(word);

% print statement w number of letters in word
fprintf('Your word has %d letters on it. \n', wordLength);

% loop printing ~ for the empty spaces for word
for i = 1:wordLength
    fprintf('~');
end    

fprintf('\n')
