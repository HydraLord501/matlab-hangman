clc;

% this project is based on the game called Hangman, a word guessing game.

% introduction and instructions to be printed along with the empty noose to
% mark as 0 wrong guesses
fprintf('Welcome to Hangman! \n');
fprintf('Goal: Guess the word correctly by typing the correct letters.\nIf you guess 6 letters wrong, you lose!\n');
fprintf('\n _____');
fprintf('\n|     |');
fprintf('\n|');
fprintf('\n|');
fprintf('\n|');
fprintf('\n----');
fprintf('\n')

% word selection and difficulty selection
difficultySelect = input('Select difficulty: 1 for Easy, 2 for Medium, 3 for Hard, 4 for Extreme.\n\n'); % user has to input a number from 1 to 4 for difficulty

if difficultySelect == 1 % if difficulty is easy
    easyWords = randi(10); % selection of the easyWords will be randomised 
                           % in the 10 cases listed below
    
    switch easyWords
        case 1
            word = 'ship';
        case 2
            word = 'play';
        case 3
            word = 'thing';
        case 4
            word = 'pen';
        case 5
            word = 'draw';
        case 6
            word = 'admit';
        case 7
            word = 'label';
        case 8
            word = 'flex';
        case 9
            word = 'code';
        case 10
            word = 'ease';    
    end
end    

if difficultySelect == 2 % if difficulty is medium
    mediumWords = randi(10); % selection of the mediumWords will be randomised 
                             % in the 10 cases listed below
    
    switch mediumWords
        case 1
            word = 'expose';
        case 2
            word = 'accept';
        case 3
            word = 'forced';
        case 4
            word = 'injury';
        case 5
            word = 'matlab';
        case 6
            word = 'school';
        case 7
            word = 'animal';
        case 8
            word = 'rowing';
        case 9
            word = 'tennis';
        case 10
            word = 'stupid';    
    end
end

if difficultySelect == 3 % if difficulty is hard
    hardWords = randi(10); % selection of the hardWords will be randomised 
                           % in the 10 cases listed below
    
    switch hardWords
        case 1
            word = 'stagger';
        case 2
            word = 'courage';
        case 3
            word = 'graceful';
        case 4
            word = 'brother';
        case 5
            word = 'physical';
        case 6
            word = 'anxiety';
        case 7
            word = 'accuracy';
        case 8
            word = 'damaged';
        case 9
            word = 'general';
        case 10
            word = 'commands';
    end
end

if difficultySelect == 4 % if difficulty if extreme
    extremeWords = randi(10); % selection of the extremeWords will be randomised 
                              % in the 10 cases listed below
    
    switch extremeWords
        case 1
            word = 'pollution';
        case 2
            word = 'president';
        case 3
            word = 'committee';
        case 4
            word = 'situation';
        case 5
            word = 'everything';
        case 6
            word = 'lieutenant';
        case 7
            word = 'important';
        case 8
            word = 'wrestling';
        case 9
            word = 'xylophone';
        case 10
            word = 'volleyball';
    end
end


% read the number of characters in the word
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

%=========================================================================%
% start the hangman game inputs with letters
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
    
    % check whether there is at least one correct letter guessed
    if InputLengthCorrect >= 1
        for i = 1:InputLengthCorrect
            % if word is not yet guessed but a letter is correctly guessed
            if wordLength ~= correctGuesses 
                fprintf('You guessed the correct Letter!\n');
            % if word length matches the number of correct guesses/if word is correctly guessed
            else                   
                    fprintf('You win! The word was %s.\n', word)
                    emptyVec(stringCorrectLetterFind(i))=lowercaseLetter;
                    fprintf('%s\n',emptyVec)
                    return;
            end
            
            % update emptyVec vector to lowercaseletter inputted
            emptyVec(stringCorrectLetterFind(i))=lowercaseLetter;
            fprintf('%s\n',emptyVec)
        end
        
    else    
        % update wrongGuesses for every wrong guess
        wrongGuesses = wrongGuesses + 1;
        
        if wrongGuesses == 1 % print this if wrongGuesses = 1
            fprintf('\n _____');
            fprintf('\n|     |');
            fprintf('\n|     O');
            fprintf('\n|');
            fprintf('\n|');
            fprintf('\n----');
            fprintf('\n');
        end 
        
        if wrongGuesses == 2 % print this if wrongGuesses = 2
            fprintf('\n _____');
            fprintf('\n|     |');
            fprintf('\n|     O');
            fprintf('\n|     |');
            fprintf('\n|');
            fprintf('\n----');
            fprintf('\n');
        end 
        
        if wrongGuesses == 3 % print this if wrongGuesses = 3
            fprintf('\n _____');
            fprintf('\n|     |');
            fprintf('\n|     O');
            fprintf('\n|    -|');
            fprintf('\n|');
            fprintf('\n----');
            fprintf('\n');
        end 
        
        if wrongGuesses == 4 % print this if wrongGuesses = 4
            fprintf('\n _____');
            fprintf('\n|     |');
            fprintf('\n|     O');
            fprintf('\n|    -|-');
            fprintf('\n|');
            fprintf('\n----');
            fprintf('\n');
        end 
        
        if wrongGuesses == 5 % print this if wrongGuesses = 5
            fprintf('\n _____');
            fprintf('\n|     |');
            fprintf('\n|     O');
            fprintf('\n|    -|-');
            fprintf('\n|    / ');
            fprintf('\n----');
            fprintf('\n');
        end 
        
        if wrongGuesses == 6 % print this if wrongGuesses = 6
            fprintf('\n _____');
            fprintf('\n|     |');
            fprintf('\n|     O');
            fprintf('\n|    -|-');
            fprintf('\n|    / \\');
            fprintf('\n----');
            fprintf('\n');
        end 
        
        % check whether its game over or not
        
        % if user has guessed letter incorrectly and still has not made 6 wrong guesses
        if wrongGuesses ~= 6
            fprintf('You guessed the incorrect letter.\n');
            
            % update attemptsLeft
            attemptsLeft = attemptsLeft - 1;
            fprintf('You have %d attempts remaining.\n', attemptsLeft);
            
            % print the letter that the user just typed, as recently
            % guessed letter.
            fprintf('Recently Guessed Letter: %s\n', lowercaseLetter);
            fprintf('%s\n',emptyVec)
            
        % if user has lost and has lost all attempts
        else    
            fprintf('%s\n',emptyVec);
            fprintf('You lose! The word was %s.\n', word)
            
            break
        end       
    end
end