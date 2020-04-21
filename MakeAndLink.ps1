#Create Solution and Projects, Link Projects to Solution
dotnet new sln -o BlabberApp 
cd BlabberApp 
dotnet new webapp -o BlabberApp.Client
dotnet sln add .\BlabberApp.Client\BlabberApp.Client.csproj                                                              
dotnet new mstest -o BlabberApp.ClientTest 
dotnet sln add .\BlabberApp.ClientTest\BlabberApp.ClientTest.csproj
dotnet new console -o BlabberApp.Console 
dotnet sln add .\BlabberApp.Console\BlabberApp.Console.csproj
dotnet new webapi -o BlabberApp.WebApi 
dotnet sln add .\BlabberApp.WebApi\BlabberApp.WebApi.csproj
dotnet new mstest -o BlabberApp.WebApiTest 
dotnet sln add .\BlabberApp.WebApiTest\BlabberApp.WebApiTest.csproj
dotnet new classlib -o BlabberApp.DataStore 
dotnet sln add .\BlabberApp.DataStore\BlabberApp.DataStore.csproj
dotnet new mstest -o BlabberApp.DataStoreTest 
dotnet sln add .\BlabberApp.DataStoreTest\BlabberApp.DataStoreTest.csproj
dotnet new classlib -o BlabberApp.Domain 
dotnet sln add .\BlabberApp.Domain\BlabberApp.Domain.csproj
dotnet new mstest -o BlabberApp.DomainTest 
dotnet sln add .\BlabberApp.DomainTest\BlabberApp.DomainTest.csproj
dotnet new grpc -o BlabberApp.Services
dotnet sln add .\BlabberApp.Services\BlabberApp.Services.csproj
dotnet new mstest -o BlabberApp.ServicesTest
dotnet sln add .\BlabberApp.ServicesTest\BlabberApp.ServicesTest.csproj

#Link Tests and Projects
dotnet add .\BlabberApp.Client\BlabberApp.Client.csproj reference .\BlabberApp.ClientTest\BlabberApp.ClientTest.csproj
dotnet add .\BlabberApp.WebApi\BlabberApp.WebApi.csproj reference .\BlabberApp.WebApiTest\BlabberApp.WebApiTest.csproj
dotnet add .\BlabberApp.DataStore\BlabberApp.DataStore.csproj reference .\BlabberApp.DataStoreTest\BlabberApp.DataStoreTest.csproj
dotnet add .\BlabberApp.Domain\BlabberApp.Domain.csproj reference .\BlabberApp.DomainTest\BlabberApp.DomainTest.csproj
dotnet add .\BlabberApp.Services\BlabberApp.Services.csproj reference .\BlabberApp.ServicesTest\BlabberApp.ServicesTest.csproj

#Create necessary links
dotnet add .\BlabberApp.DataStore\BlabberApp.DataStore.csproj reference .\BlabberApp.Domain\BlabberApp.Domain.csproj