a='Siddhant';
k=input("Enter the key")
encrypt="";
decrypt="";
for i=1:length(a)
    b=part(a,i)
    //disp(b)
    c=ascii(b);
    //disp(c)
    if c>=97 & c<=122 then
        c = c+modulo(k,26);
        if(c>122)
            c=c-26;
        end
    end
    if c>=65 & c<=90 then
        c = c+modulo(k,26);
        if(c>90)
            c=c-26;
        end
    end
    encrypt = encrypt+ascii(c);
end
disp(encrypt)
for i=1:length(encrypt)
    b=part(encrypt,i)
    //disp(b)
    c=ascii(b);
    //disp(c)
    if c>=97 & c<=122 then
        c = c-modulo(k,26);
        if(c<97)
            c=c+26;
        end
    end
    if c>=65 & c<=90 then
        c = c-modulo(k,26);
        if(c<65)
            c=c+26;
        end
    end
    decrypt = decrypt+ascii(c);
end
disp(decrypt)
