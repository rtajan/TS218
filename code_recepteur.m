clear all
close all
clc

%% Chargement du fichier contenant le signal reçu
load 'signal_recu.mat';

%% La modulation utilisée pour encoder les données
M = 4; % Ordre de la modulation
theMod = modem.pskmod('M', M, 'PhaseOffset', pi/4, 'SymbolOrder', 'Gray', 'InputType', 'Integer'); % Le modulateur
theDemod = modem.pskdemod(theMod, 'DECISIONTYPE', 'HARD DECISION'); % Le démodulateur

%% Votre récepteur
% En entrée : signal_recu, signal équivalent à rl(kTe) avec Te le temps
% d'échantillonnage

% hatB doit être une matrice de log2(M) = 2 lignes et Ns = 65536 colonnes
% A partir des entiers obtenus en sortie de theMod.modulate_Int, hatB est
% calculé grace à la fonction de2bi(foo,2);
%% Décodage de source
hatMatBitImg = reshape(hatB(:),[],8);
matImg = bi2de(hatMatBitImg);
Img = reshape(matImg,128,128);

%% Affichage
figure
imagesc(Img)
colormap gray
