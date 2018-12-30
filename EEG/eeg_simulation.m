% main function
function eeg_simulation()
    main()
end

%% load signal
function sig = load_sig(f, N, fs)
    n = (1:N)';
    sig = awgn(sin(2*pi*f*n/fs), 1);
end

%% processes the output
function move = pros(ch1, ch2, fs, f)
    w = ceil(fs/f);      % window size;
    N = length(ch1);
    out_len = N-w+1;
    freqrange = [f-2 f+2];
    move = zeros(1, out_len)';
    eps = 0.2;
    for i = 1:out_len
        fprintf("processing signal..... %f%% \n", i*100/out_len);
        s1 = ch1(i:i+w-1);
        s2 = ch2(i:i+w-1);
        p1 = bandpower(s1, fs, freqrange);
        p2 = bandpower(s2, fs, freqrange);
        if p1 > p2 + eps
            move(i) = 1;
        end
        if p2 > p1 + eps
            move(i) = -1;
        end
    end
end

%% main function implementation
function main()
    fs = 100;
    f = 15;
    N = 30000;
    w = ceil(fs/f);
    sig = load_sig(f, N, fs);
    siglen = 100;
    numSigs = N/100;
    ch1_ind = sort(randi(N-siglen, 1, numSigs));
    ch2_ind = sort(randi(N-siglen, 1, numSigs));
    ch1_mark = zeros(1, N)';
    ch2_mark = zeros(1, N)';
    ch1 = awgn(zeros(1, N)', 10);
    ch2 = awgn(zeros(1, N)', 10);
    for i = 1:numSigs
        fprintf("creating signal..... %f%% \n", + i*100/numSigs);
        startInd = ch1_ind(i);
        stopInd = startInd + siglen;
        ch1(startInd : stopInd) = sig(startInd : stopInd);
        ch1_mark(startInd : stopInd) = 2;
        
        startInd = ch2_ind(i);
        stopInd = startInd + siglen;
        ch2(startInd : stopInd) = sig(startInd : stopInd);
        ch2_mark(startInd : stopInd) = -2;
    end
    move = pros(ch1, ch2, fs, f);
    n = (1:length(move))';
    ch1_mark = ch1_mark(w:N);
    ch2_mark = ch2_mark(w:N);
    size(move)
    size(n)
    size(ch2_mark)
    plot(n, [move ch1_mark ch2_mark]);

    axis([-inf inf -3 3]);
end

%%

