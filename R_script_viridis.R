
#Wrangling dataset to include only Tuesday Lake from 1986 and 2015
Tuesdaydata_1986_and_2015 <- NTLdata %>%
  filter(lakename == "Tuesday Lake" & year4 == "1986" | year4 == "2015")

Tuesdaydata_1986 <- Tuesdaydata_1986_and_2015 %>% filter(year4 == "1986")
Tuesdaydata2015 <- Tuesdaydata_1986_and_2015 %>% filter(year4 == "2015")

```

6. Create three graphs: (1) temperature profiles for the early year, (2) temperature profiles for the late year, and (3) a `plot_grid` of the two graphs together. Choose `geom_point` and color your points by date. 

Remember to edit your graphs so they follow good data visualization practices.

```{r}

#temperature profile for Tuesday Lake in 1986
Temp1986 <- 
  ggplot(Tuesdaydata_1986, aes(x = temperature_C, y = depth, color = sampledate)) +
  geom_point() +
  scale_y_reverse() +
  scale_x_continuous(position = "top") +
  scale_color_viridis_c(end = 0.8, option = "magma") +
  labs(x = expression("Temperature "(degree*C)), y = "Depth (m)", color = "Date") +
  theme(legend.position = "right")
print(Temp1986)