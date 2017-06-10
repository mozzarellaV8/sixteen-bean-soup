# experimental custom palettes 
# extensions on existing palettes

library(ggplot2)
library(RColorBrewer)
library(wesanderson)

# palettes --------------------------------------------------------------------

# ColorRamp 8
pal.8 <- colorRampPalette(c("deepskyblue4", 
                            "bisque1", 
                            "firebrick4"))(8)

# agora categorical palette
agora <- c(
	"red3", 
	"gold1", 
	"deepskyblue4", "lightblue3", 
	"red1", 
	"bisque1", "bisque3", "bisque4", 
	"darkorange3", "firebrick4")

# pd hard pairs
pd.8 <- c("firebrick4", "deepskyblue4", 
          "firebrick2", "deepskyblue2",
          "coral4", "red3", 
          "coral2", "gray50")

# RColorBrewer extentions -----------------------------------------------------

# base pastel palette
brew.8 <- brewer.pal(8, "Pastel1")
# "#FBB4AE" "#B3CDE3" "#CCEBC5" "#DECBE4" "#FED9A6" "#FFFFCC" "#E5D8BD" "#FDDAEC"

# brewer palette, compliment, 2 shades deeper
pastel.plus <- c(
	"#FBB4AE", "#aef5fb", "#f9877d",
	"#B3CDE3", "#e3c9b3", "#8eb4d5", 
	"#CCEBC5", "#e4c5eb", "#abde9f",
	"#DECBE4", "#d1e4cb", "#c9a9d3",
	"#FED9A6", "#a6cbfe", "#fdc374",
	"#FFFFCC", "#ccccff", "#ffff99",
	"#E5D8BD", "#bdcae5", "#d7c298",
	"#FDDAEC", "#dafdeb", "#faaad3")

# color hexa extensions -------------------------------------------------------

# cappuccino
cappuccino <- c("#4b3832", 
	"#854442", "#fff4e6",
	"#3c2f2f", "#be9b7b")

cap.compliments <- c(
	"#4b3832", "#32454b",
	"#854442", "#428385",
	"#fff4e6", "#e6f1ff",
	"#3c2f2f", "#2f3c3c",
	"#be9b7b", "#7b9ebe")

# base cappucino with 2 tints or shades
cap.fam <- c(
	"#3c2f2f", "#4a3a3a", "#594545",
	"#4b3832", "#5d4b46", "#6e5f5a",
	"#be9b7b", "#cbaf95", "#d8c3af",
	"#fff4e6", "#e5dbcf", "#ccc3b8",
	"#854442", "#915654", "#9d6967"
	)

# wes anderson experiments ----------------------------------------------------

# Royal Tenenbaums
as.character(wes_palette("Royal1"))
# "#899DA4" "#C93312" "#FAEFD1" "#DC863B"

# deeper shade, base color, lighter tint 
royal.plus <- c(
  "#525e62", "#899DA4", "#cfd7da",
  "#781e0a", "#C93312", "#e49988",
  "#afa792", "#FAEFD1", "#fdf8ec",
  "#845023", "#DC863B", "#edc29d"
)

# Fantastic Mr. Fox
as.character(wes_palette("FantasticFox"))
# "#DD8D29" "#E2D200" "#46ACC8" "#E58601" "#B40F20"

# deeper shade, base, lighter tint
fox.plus <- c(
	"#9a621c", "#DD8D29", "#e7af69",
	"#b4a800", "#E2D200", "#f0e87f",
	"#31788c", "#46ACC8", "#7dc4d8",
	"#a05d00", "#E58601", "#ecaa4d",
	"#7d0a16", "#B40F20", "#ca5762"
	)

# Darjeeling (qualitative)
as.character(wes_palette("Darjeeling"))
# "#FF0000" "#00A08A" "#F2AD00" "#F98400" "#5BBCD6"

darjeeling.plus <- c(
	"#b20000", "#FF0000", "#ff7f7f",
	"#007060", "#00A08A", "#4cbcad",
	"#c18a00", "#F2AD00", "#f8d67f",
	"#c76900", "#F98400", "#fbb566",
	"#4896ab", "#5BBCD6", "#8cd0e2"
	)

# Darjeeling2 (qualitative)
as.character(wes_palette("Darjeeling2"))
#  "#ECCBAE" "#046C9A" "#D69C4E" "#ABDDDE" "#000000"

darjeeling2.plus <- c(
	 "#a58e79", "#ECCBAE", "#f7eade",
	 "#024b6b", "#046C9A", "#68a6c2",
	 "#956d36", "#D69C4E", "#eacda6",
	 "#88b0b1", "#ABDDDE", "#d5eeee",
	 "#cccccc", "#7f7f7f", "#000000"
	 )

# Zissou
as.character(wes_palette("Zissou"))
#  "#3B9AB2" "#78B7C5" "#EBCC2A" "#E1AF00" "#F21A00"

zissou.plus <- c(
	"#296b7c", "#3B9AB2", "#89c2d0",
	"#548089", "#78B7C5", "#aed3dc",
	"#a48e1d", "#EBCC2A", "#f5e594",
	"#9d7a00", "#E1AF00", "#edcf66",
	"#a91200", "#F21A00", "#f77566"
	)










