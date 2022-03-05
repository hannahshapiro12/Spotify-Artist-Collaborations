library(tidyverse)
library(psych)


ggplot(data = Music, aes(x=reorder(Genre, -Frequency), y=Frequency)) + 
  geom_col(fill="greenyellow", col="lightseagreen",aes()) + theme_classic()+
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  labs(x = "Genre", title="Frequency of Inter-genre Collaborations") 

ggplot(data = Music, aes(x=reorder(Genre, -Frequency), y=Frequency)) + 
  geom_col(fill="lightseagreen", col="greenyellow",aes()) + theme_classic()+
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  labs(x = "Genre", title="Frequency of Intra-genre Collaborations") 

ggplot(data = GenderMusic, aes(x=Type, y=Frequency)) + 
  geom_col(col="lightseagreen",aes(fill=Gender)) + scale_fill_brewer("Paired") + 
  theme_classic() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  labs(title="Frequency of Inter-genre Gender Collabs") 

ggplot(data = GenderMusic, aes(x=Type, y=Frequency)) + 
  geom_col(col="lightseagreen",aes(fill=Gender)) + scale_fill_brewer("Paired") + 
  theme_classic() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  labs(title="Frequency of Intra-genre Gender Collabs") 


ggplot(Artists, aes(x = reorder(Artist, Frequency), y = Frequency)) +
  geom_col(col="lightseagreen",aes(fill=Genre)) + coord_flip() + scale_y_continuous(name="Number of Collaborations") +
  scale_x_discrete(name="Artist") + theme_classic() + scale_fill_brewer("Paired")+
  theme(axis.text.x = element_text(face="bold", color="#008000",
                                   size=8, angle=0),
        axis.text.y = element_text(face="bold", color="#008000",
                                   size=8, angle=0)) +
  labs(title="Top Collaborating Artists") 
