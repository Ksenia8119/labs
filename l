#include<iostream>
#include <windows.h>
#include <filesystem>
#include <fstream>
#include <string>
#include<experimental/filesystem>
using namespace std;
namespace fs = std::filesystem;
void op()
{
	while (true)
	{
		string log;
		for (auto& p : fs::directory_iterator("logs"))
		{
			ifstream file(p.path().generic_string());
			while (getline(file, log))
			{
				cout << log;
			};
		};
		string testimony;
		string date;
		string device;
		string time;
		cout << "Enter device : ";
		cin >> device;
		const char* mistake = "garbage";
		string excess;
		int amount_of_elements = 0;
		for (int i = 0; i < 10; i++)
		{
			if (excess == mistake)
			{
				excess = '\n';
			}

			else
			{
				for (auto& p : fs::directory_iterator("logs"))
				{
					ifstream file(p.path());
					amount_of_elements++;
				}
				int counter = 0;
				int quantity = 10;
				char* dyn;
				dyn = new char[16];
				for (auto& p : fs::directory_iterator("logs"))
				{
					string num = p.path().string();

					for (int i = 0; i < 16; i++)
					{
						date[counter] = num[quantity];
						quantity++;
					}
					date[counter] = '\0';
					ifstream file(p.path());
					while (file)
					{
						string line;
						getline(file, line);
						time[counter] = line[0];
						line[1] = '\0';
						if (line[0] == ' ' || line[0] == '\0')
						{

						}
						else
						{
							int pass = 0;
							int res = 0;
							for (int i = 0; i < 37; i++)
							{
								if (line[i] == ':')
								{
									pass++;
								}
								else if (pass == 1 || pass == 2)
								{
									if (pass == 2)
									{
										int elements = line.size() - i;
										for (int r = 0; r < elements; r++)
										{
											testimony[counter] = line[r + i];
										}
										testimony[counter] = '\0';
										counter++;
										break;
									}
									else
									{

										if (line[i] == res)
										{
										}
										else if (line[i] != res)
										{
											break;
										}
										res++;
									}
								}
							}
						}

						file.close();
					}

				}

			}

		}
		for (int i = 0; i < amount_of_elements; i++)
		{
			cout << date[i] << ":" << time[i] << "\t" << testimony[i] << endl;

		}
		break;
	}

}

int main()
{
	void op();
}
