clc;

% this project is based on the game called Hangman, a word guessing game.

% introduction and instructions to be printed along with the empty noose to
% mark as 0 wrong guesses

fprintf('Welcome to Hangman! \n');
fprintf('You have 6 letters to input and you must try to guess what the word is.\n');
fprintf('\n _____');
fprintf('\n|     |');
fprintf('\n|');
fprintf('\n|');
fprintf('\n|');
fprintf('\n----');
fprintf('\n')

% set variable 'word'
word = 'lightsaber';

% read the number of character in the variable word
wordLength = length(word);
% initialise emptyVec for future use
emptyVec = [];

% initialise variables for numeber of attempts left, correct and wrong
% guesses
attemptsLeft = 6;
correctGuesses = 0;
wrongGuesses = 0;

% print statement w number of letters in word
fprintf('Your word has %d letters on it. \n', wordLength);

% loop printing ~ for the empty spaces for word
for i = 1:wordLength
    emptyVec = [emptyVec '~'];
end    

fprintf('%s\n', emptyVec)

% start user inputs..
while 1
    % start user inputs by putting a single letter in
    inputLetter = input('Guess a letter: ','s');
    
    % turn the inputted letter lowercase
    lowercaseLetter = lower(string(inputLetter));
    
    % find user input inside 'word'
    stringFind = strfind(word,lowercaseLetter);
    
    % read length of stringFind to find number of letters correctly guessed
    InputLengthCorrect = length(stringFind);
    
    % add number of correct guesses for every correct input
    correctGuesses = correctGuesses + InputLengthCorrect;
    
    % check whether there is one correct letter guessed
    if InputLengthCorrect == 1
        % loop for the total correct letters
        for i = 1:InputLengthCorrect
            fprintf('Correct letter guessed.\n');
        end
    end
end