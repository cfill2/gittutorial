
#My Presentation
theme_mypresentation <- function() {
    theme_classic(base_size = 28, base_family = "Times New Roman") %+replace%
    theme(plot.title = element_text(hjust = 0.5, size = 32), #change stuff here
          #panel.background = element_rect(fill = "transparent", colour = NA),
          panel.background = element_rect(fill = "#FFFFFF", colour = NA),
          plot.background = element_rect(fill = "#CCCCCC"),
          legend.background = element_rect(size = 0.5),
          legend.margin = margin(c(.1,.1,.1,.1), unit = "cm"),
          legend.text = element_text(size = 28),
          legend.title = element_text(face = "italic", size = 28),
          panel.grid.major = element_line(size = 1, linetype = 'solid',
                                          colour = "gray"),
          panel.grid.minor = element_line(size = 0.25, linetype = 'solid',
                                          colour = "gray"),
          axis.title = element_text(size = 30),
          axis.text = element_text(size = 28)
          )
}


#My Documents
theme_mydocuments <- function() {
    theme_classic(base_size = 18, base_family = "Times New Roman") %+replace%
    theme(plot.title = element_text(hjust = 0.5, face = "bold"), #change stuff here
          panel.background = element_rect(color = NA),
          plot.background = element_rect(color = NA),
          axis.title = element_text(face = "bold", size = rel(1)),
          axis.text = element_text(),
          axis.line = element_line(color = "black"),
          panel.grid.major = element_line(color = "ivory2"),
          panel.grid.minor = element_blank(),
          legend.key.size= unit(0.2, "cm"),
          legend.margin = unit(0, "cm"),
          legend.title = element_text(face="italic"),
          strip.background=element_rect(colour="#f0f0f0",fill="whitesmoke"),
          strip.text = element_text(face="bold")
    )
}

