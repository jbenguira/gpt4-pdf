FROM node:18 
#Add a work directory
WORKDIR /app
#Copy dependencies
COPY ./package.json ./package.json



#Install dependencies
RUN yarn install
#Copy app files
COPY . .
#Cache and Install dependencies

#Change a work directory
WORKDIR ./ 

#Expose port
EXPOSE 3000 
#Build command


#Start the app
CMD npm run dev
