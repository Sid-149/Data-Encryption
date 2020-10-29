import java.io.*;

class vignere{
public static void main(String args[]) throws IOException
{
String pt,k;
int i,j;
char a;
char [] plain;
char [] key;
char [] cipher;
BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
System.out.println("Enter the plain text:");
pt=br.readLine();
System.out.println("Enter the key text:");
k=br.readLine();

int n,m;
n=pt.length();
m=k.length();

int temp = n%m;
temp = m-temp;
int l = n+temp;

plain = new char[l];
key = new char[l];
cipher = new char[l];

System.out.print(" The plain text:");
for(i=0;i<n;i++)
{
plain[i] = pt.charAt(i);
System.out.print(plain[i]);
}
for(i=(l-1);i>=n;i--)
{
plain[i]='Z';
System.out.print(plain[i]);
}
System.out.println();
System.out.print("key:");
int x=0;
for(i=0;i<(l/m);i++)
{
for(j=0;j<m;j++)
{
key[x] = k.charAt(j);
System.out.print(key[x]);
x++;
}
}
System.out.println();
System.out.print("Cipher Text: ");;
 for(i=0;i<l;i++)
   {

	x = (plain[i]+key[i])%26;
cipher [i] = (char) (x+'A');
System.out.print(cipher[i]);
}
}
}



