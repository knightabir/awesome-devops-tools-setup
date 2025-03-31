 if ! docker run -dit --name sonarqube -p 9000:9000 sonarqube:lts-community; then
  echo "Failed to start SonarQube container, exiting."
  exit 1
fi

echo "SonarQube container started successfully."
echo "Author: Abir Sarkar follow on GitHub : https://github.com/knightabir"
