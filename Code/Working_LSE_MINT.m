Two_Input_One_Output_MINT

N = 100;
unit_step = ones(1,N);

output11 = conv(unit_step,h1);
output12 = conv(unit_step,h2);

output1 = conv(output11,g1);
output2 = conv(output12,g2);

final_output = output1 + output2; 

figure(1)
subplot(2,2,1)
stem(unit_step);
xlabel("n");
ylabel("x[n]");
title("Input Signal");

subplot(2,2,2)
stem(final_output(1:N));
xlabel("n");
ylabel("y[n]");
title("Output Signal");

subplot(2,2,3)
plot(20*log10(abs(fft(final_output(1:N))-fft(unit_step))));
xlabel("w");
ylabel("E[w] in db");
title("Error in MINT");

LSE_method

output11 = conv(unit_step,h1);

output1 = conv(output11,g1);

subplot(2,2,4)
plot(20*log10(abs(fft(output1(1:N))-fft(unit_step))));
xlabel("w");
ylabel("E[w] in db");
title("Error in LSE");

% **********************
Two_Input_One_Output_MINT

nn = 1:N;
sine = sin(nn);

output11 = conv(sine,h1);
output12 = conv(sine,h2);

output1 = conv(output11,g1);
output2 = conv(output12,g2);

final_output = output1 + output2; 

figure(2)
subplot(2,2,1)
stem(sine);
xlabel("n");
ylabel("x[n]");
title("Input Signal");

subplot(2,2,2)
stem(final_output(1:N));
xlabel("n");
ylabel("y[n]");
title("Output Signal");

subplot(2,2,3)
plot(20*log10(abs(fft(final_output(1:N))-fft(sine))));
xlabel("w");
ylabel("E[w] in dB");
title("Error in MINT");

LSE_method

output11 = conv(sine,h1);

output1 = conv(output11,g1);

subplot(2,2,4)
plot(20*log10(abs(fft(output1(1:N))-fft(sine))));
xlabel("w");
ylabel("E[w] in db");
title("Error in LSE");

% *******************
Two_Input_One_Output_MINT

nn = 1:N;
Ramp = nn;

output11 = conv(Ramp,h1);
output12 = conv(Ramp,h2);

output1 = conv(output11,g1);
output2 = conv(output12,g2);

final_output = output1 + output2; 

figure(3)
subplot(2,2,1)
stem(Ramp);
xlabel("n");
ylabel("x[n]");
title("Input Signal");

subplot(2,2,2)
stem(final_output(1:N));
xlabel("n");
ylabel("y[n]");
title("Output Signal");

subplot(2,2,3)
plot(20*log10(abs(fft(final_output(1:N))-fft(Ramp))));
xlabel("w");
ylabel("E[w] in dB");
title("Error in MINT");

LSE_method

output11 = conv(Ramp,h1);

output1 = conv(output11,g1);

subplot(2,2,4)
plot(20*log10(abs(fft(output1(1:N))-fft(Ramp))));
xlabel("w");
ylabel("E[w] in db");
title("Error in LSE");

% *******************
Two_Input_One_Output_MINT

Random = floor(rand(N,1)*10);

output11 = conv(Random,h1);
output12 = conv(Random,h2);

output1 = conv(output11,g1);
output2 = conv(output12,g2);

final_output = output1 + output2; 

figure(4)
subplot(2,2,1)
stem(Random);
xlabel("n");
ylabel("x[n]");
title("Input Signal");

subplot(2,2,2)
stem(final_output(1:N));
xlabel("n");
ylabel("y[n]");
title("Output Signal");

subplot(2,2,3)
plot(20*log10(abs(fft(final_output(1:N))-fft(Random))));
xlabel("w");
ylabel("E[w] in dB");
title("Error in MINT");

LSE_method

output11 = conv(Random,h1);

output1 = conv(output11,g1);

subplot(2,2,4)
plot(20*log10(abs(fft(output1(1:N))-fft(Random))));
xlabel("w");
ylabel("E[w] in db");
title("Error in LSE");