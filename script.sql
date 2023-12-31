USE [PreguntadOrt]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 31/8/2023 15:58:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[idCategoria] [int] NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Foto] [varchar](255) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dificultades]    Script Date: 31/8/2023 15:58:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dificultades](
	[idDificultad] [int] NOT NULL,
	[Nombre] [varchar](255) NULL,
 CONSTRAINT [PK_Dificultades] PRIMARY KEY CLUSTERED 
(
	[idDificultad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 31/8/2023 15:58:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[idPregunta] [int] NOT NULL,
	[idCategoria] [int] NULL,
	[idDificultad] [int] NULL,
	[Enunciado] [varchar](255) NULL,
	[Foto] [varchar](255) NULL,
	[idOpcion] [int] NULL,
 CONSTRAINT [PK_Preguntas] PRIMARY KEY CLUSTERED 
(
	[idPregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Respuestas]    Script Date: 31/8/2023 15:58:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Respuestas](
	[idRespuesta] [int] NOT NULL,
	[idPregunta] [int] NULL,
	[Opcion] [int] NULL,
	[Contenido] [varchar](255) NULL,
	[Correcta] [bit] NULL,
	[Foto] [varchar](255) NULL,
 CONSTRAINT [PK_Respuestas] PRIMARY KEY CLUSTERED 
(
	[idRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categorias] ([idCategoria], [Nombre], [Foto]) VALUES (1, N'¿Quién dijo quijo?', NULL)
INSERT [dbo].[Categorias] ([idCategoria], [Nombre], [Foto]) VALUES (2, N'Esta letra me suena…', NULL)
INSERT [dbo].[Categorias] ([idCategoria], [Nombre], [Foto]) VALUES (3, N'Temática ORT ', NULL)
INSERT [dbo].[Categorias] ([idCategoria], [Nombre], [Foto]) VALUES (4, N'¡Esta me la vi!', NULL)
GO
INSERT [dbo].[Dificultades] ([idDificultad], [Nombre]) VALUES (1, N'Fácil')
INSERT [dbo].[Dificultades] ([idDificultad], [Nombre]) VALUES (2, N'Intermedio')
INSERT [dbo].[Dificultades] ([idDificultad], [Nombre]) VALUES (3, N'Difícil')
GO
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (1, 1, 1, N'Bienvenidos a la mesaza ', NULL, 1)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (2, 1, 1, N'Pero nosotros, los argentinos, llegamos en los barcos de Europa', NULL, 2)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (3, 1, 1, N' ¿Qué gusto tiene la sal? Salada ', NULL, 3)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (4, 1, 1, N'A ver la repe…', NULL, 4)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (5, 1, 1, N'¡No se inunda más!', NULL, 5)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (6, 1, 2, N'Eeeeeeeeehhhhhhhhh ', NULL, 6)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (7, 1, 2, N'Con 15 pesos, con 15 pesos me hago alto guiso', NULL, 7)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (8, 1, 2, N'Es una banda pipo', NULL, 8)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (9, 1, 2, N'Me gusta el arte, todo tipo de arte', NULL, 9)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (10, 1, 2, N'Si querés llorar, llorá', NULL, 10)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (11, 1, 3, N'"La lógica te llevará desde A hasta B. La imaginación te llevará a cualquier parte."
', NULL, 11)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (12, 1, 3, N'"No soy producto de mis circunstancias. Soy producto de mis decisiones."
', NULL, 12)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (13, 1, 3, N'"La vida es lo que pasa mientras estamos haciendo planes para el futuro."
', NULL, 13)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (14, 1, 3, N'"La verdad nunca daña a una causa que es justa."', NULL, 14)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (15, 1, 3, N' "El mundo no será destruido por aquellos que hacen el mal, sino por aquellos que los observan sin hacer nada."
', NULL, 15)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (16, 2, 1, N'Con vos es 4 de noviembre…', NULL, 16)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (17, 2, 1, N'Hace frío y estoy…', NULL, 17)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (18, 2, 1, N'"Voy a reír, voy a bailar..."', NULL, 18)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (19, 2, 1, N'que noche magica ciudad de buenos aires', NULL, 19)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (20, 2, 1, N'Siempre seremos prófugos los dos
', NULL, 20)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (21, 2, 2, N' "Baila, baila, baila, que la noche es tuya..."', NULL, 21)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (22, 2, 2, N'"Cierro los ojos y bien suelto el vuelo..."', NULL, 22)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (23, 2, 2, N' "Porque sé que aunque pasen los años..."', NULL, 23)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (24, 2, 2, N'Mírenla miren miren… mírenla
', NULL, 24)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (25, 2, 2, N'"Será que no me amas, no sé..."', NULL, 25)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (26, 2, 3, N' "No me hagas caso, soy un inconsciente..."', NULL, 26)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (27, 2, 3, N'"Despacito, quiero respirar tu cuello despacito..." ', NULL, 27)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (28, 2, 3, N'"Tú eres el imán y yo soy el metal..." ', NULL, 28)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (29, 2, 3, N'"Sigo tranquilo en mi rincón, ya no te guardo rencor..."', NULL, 29)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (30, 2, 3, N'"Ya me cansé, no quiero ser tu amiga..."', NULL, 30)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (31, 3, 1, N'¿A qué hora cierra la escuela los viernes?', NULL, 31)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (32, 3, 1, N'¿Cuántos años tiene la escuela?', NULL, 32)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (33, 3, 1, N'¿Cuántos edificios tiene la sede de ORT Almagro?', NULL, 33)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (34, 3, 1, N'¿Cuántos laboratorios de informática hay?', NULL, 34)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (35, 3, 1, N'¿Cuántas especialidades hay en ORT Almagro? ', NULL, 35)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (36, 3, 2, N'¿Cómo se llama el laboratorio que está dentro del CIDI? ', NULL, 36)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (37, 3, 2, N'¿Cuántas sedes hay en ORT Argentina? ', NULL, 37)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (38, 3, 2, N'¿Cuántos auditorios hay en la sede Almagro?', NULL, 38)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (39, 3, 2, N'¿Cuándo cumple años ORT? ', NULL, 39)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (40, 3, 2, N'¿Cuál es la especialidad con menos estudiantes?', NULL, 40)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (41, 3, 3, N'¿Qué procesador tienen las computadoras del CIDI? ', NULL, 41)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (42, 3, 3, N'¿Cuántas computadoras hay en el CIDI?', NULL, 42)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (43, 3, 3, N'¿Cuál es el teléfono de la escuela?', NULL, 43)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (44, 3, 3, N'¿Cuántos talleres hay en ORT este año?', NULL, 44)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (45, 3, 3, N'¿Cuál de estas sedes no tiene escuela secundaria? ', NULL, 45)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (46, 4, 1, N'./Imagenes/1', NULL, 46)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (47, 4, 1, N'./Imagenes/2
', NULL, 47)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (48, 4, 1, N'./Imagenes/3
', NULL, 48)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (49, 4, 1, N'./Imagenes/4
', NULL, 49)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (50, 4, 1, N'./Imagenes/5
', NULL, 50)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (51, 4, 2, N'./Imagenes/6
', NULL, 51)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (52, 4, 2, N'./Imagenes/7
', NULL, 52)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (53, 4, 2, N'./Imagenes/8
', NULL, 53)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (54, 4, 2, N'./Imagenes/9
', NULL, 54)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (55, 4, 2, N'./Imagenes/10
', NULL, 55)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (56, 4, 3, N'./Imagenes/11
', NULL, 56)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (57, 4, 3, N'./Imagenes/12
', NULL, 57)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (58, 4, 3, N'./Imagenes/13
', NULL, 58)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (59, 4, 3, N'./Imagenes/14
', NULL, 59)
INSERT [dbo].[Preguntas] ([idPregunta], [idCategoria], [idDificultad], [Enunciado], [Foto], [idOpcion]) VALUES (60, 4, 3, N'./Imagenes/15
', NULL, 60)
GO
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (1, 1, 1, N'Albert Einstein', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (2, 1, 2, N'Mirtha legrand', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (3, 1, 3, N'Bananirou', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (4, 1, 4, N'Shakira', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (5, 2, 1, N'Steve Jobs', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (6, 2, 2, N'Ricardo Fort', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (7, 2, 3, N'Alberto Fernandez', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (8, 2, 4, N'Los Wachiturros', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (9, 3, 1, N'Macri', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (10, 3, 2, N'Picasso', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (11, 3, 3, N'Marama', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (12, 3, 4, N'Carlitos Bala', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (13, 4, 1, N'Guido Cascada', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (14, 4, 2, N'Luis Miguel', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (15, 4, 3, N'Raul Alfonsin', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (16, 4, 4, N'Guido Kaczka
', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (17, 5, 1, N'Cristina', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (18, 5, 2, N'Macri', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (19, 5, 3, N'Gustavo Cerati', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (20, 5, 4, N'Mariana Polinamia', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (21, 6, 1, N'Alguien que no sabe que decir', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (22, 6, 2, N'Maradona', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (23, 6, 3, N'Messi', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (24, 6, 4, N'Rey Augusto II', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (25, 7, 1, N'Un turro', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (26, 7, 2, N'Un cocinero de guisos', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (27, 7, 3, N'Mi papa', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (28, 7, 4, N'La Joaqui', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (29, 8, 1, N'Un hincha', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (30, 8, 2, N'El amigo de pipo', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (31, 8, 3, N'Maradona', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (32, 8, 4, N'Madre teresa', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (33, 9, 1, N'Un Niño', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (34, 9, 2, N'Yukelson', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (35, 9, 3, N'Nadie dijo eso', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (36, 9, 4, N'Da Vincci', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (37, 10, 1, N'Moria Casan', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (38, 10, 2, N'Mark Twain', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (39, 10, 3, N'J.K. Rowling', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (40, 10, 4, N'Harry Poter', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (41, 11, 1, N'Niels Bohr', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (42, 11, 2, N'Albert Einstein', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (43, 11, 3, N'J.K. Rowling', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (44, 11, 4, N'Harry Poter', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (45, 12, 1, N'Tony Robbins', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (46, 12, 2, N'Stephen Covey', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (47, 12, 3, N'Ralph Waldo Emerson', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (48, 12, 4, N'Eleanor Roosevelt', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (49, 13, 1, N'John Lennon', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (50, 13, 2, N'Bob Marley', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (51, 13, 3, N'Jim Morrison', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (52, 13, 4, N' Freddie Mercury
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (53, 14, 1, N'Mahatma Gandhi', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (54, 14, 2, N'Martin Luther King Jr', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (55, 14, 3, N'Abraham Lincoln', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (56, 14, 4, N'Malcolm X
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (57, 15, 1, N'Elie Wiesel', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (58, 15, 2, N'Lincoln ', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (59, 15, 3, N'Albert Eintein', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (60, 15, 4, N'Albert Camus
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (61, 16, 1, N' "Bailando" - Enrique Iglesias', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (62, 16, 2, N'"Corazón Espinado" - Santana ft. Maná', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (63, 16, 3, N'"La melodia de dios" - Tan Bionica', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (64, 16, 4, N' "La Bicicleta" - Carlos Vives ft. Shakira
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (65, 17, 1, N'"No Me Doy por Vencido" - Luis Fonsi ', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (66, 17, 2, N' "Limón y Sal" - Julieta Venegas', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (67, 17, 3, N' "Darte un Beso" - Prince Royce', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (68, 17, 4, N'"Mil Horas" - los abuelos de la nada', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (69, 18, 1, N'"Vivir mi vida" - Marc Anthony', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (70, 18, 2, N'"Vivir Mi Vida" - Marc Anthony ', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (71, 18, 3, N'"Hawái" - Maluma ', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (72, 18, 4, N'"Waka Waka (This Time for Africa)" - Shakira', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (73, 19, 1, N'"Corazón" - Maluma ', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (74, 19, 2, N'"Cuidad Magica" - Tan Bionica', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (75, 19, 3, N' "Limón y Sal" - Julieta Venegas', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (76, 19, 4, N'"Felices los 4" - Maluma
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (77, 20, 1, N'"Profugos" - Gustavo Ceratti', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (78, 20, 2, N'"La Bicicleta" - Carlos Vives ft. Shakira', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (79, 20, 3, N' "Limón y Sal" - Julieta Venegas', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (80, 20, 4, N'"Felices los 4" - Maluma
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (81, 21, 1, N' "La Bicicleta" - Carlos Vives ft. Shakira', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (82, 21, 2, N'"Baila Baila Baila" - Ozuna', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (83, 21, 3, N'"Dákiti" - Bad Bunny, Jhay Cortez
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (84, 21, 4, N' "Limón y Sal" - Julieta Venegas', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (85, 22, 1, N' "Eres Mi Religión" - Maná', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (86, 22, 2, N'"Te Amo" - Franco de Vita', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (87, 22, 3, N'"La Llave de Mi Corazón" - Juan Luis Guerra', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (88, 22, 4, N' "Vivir Mi Vida" - Marc Anthony
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (89, 23, 1, N'"Te Vi Venir" - Sin Bandera', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (90, 23, 2, N' "Labios Compartidos" - Maná ', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (91, 23, 3, N' "Hawái" - Maluma', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (92, 23, 4, N'"Por Amarte Así" - Christian Castro
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (93, 24, 1, N'"Perfect" - Ed Sheeran', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (94, 24, 2, N'"Vivir Sin Aire" - Maná ', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (95, 24, 3, N'"Mirenla" - Ciro y los Persas', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (96, 24, 4, N'"Amor Completo" - Mon Laferte', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (97, 25, 1, N' "Bailar" - Deorro ft. Elvis Crespo', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (98, 25, 2, N' "Diles" - Bad Bunny ', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (99, 25, 3, N' "La Tortura" - Shakira ft. Alejandro Sanz', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (100, 25, 4, N' "X" - Nicky Jam, J Balvin
', 0, N'0')
GO
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (101, 26, 1, N'"Que Pena" - Maluma, J Balvin', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (102, 26, 2, N'  "Afuera Está Lloviendo" - Julión Álvarez  ', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (103, 26, 3, N'"Dákiti" - Bad Bunny, Jhay Cortez', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (104, 26, 4, N' "Tusa" - Karol G ft. Nicki Minaj
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (105, 27, 1, N' "Baila Baila Baila" - Ozuna ', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (106, 27, 2, N' "Despacito" - Luis Fonsi ft. Daddy Yankee  ', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (107, 27, 3, N'"Shape of You" - Ed Sheeran ', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (108, 27, 4, N' "La Camisa Negra" - Juanes
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (109, 28, 1, N'"Bailando" - Enrique Iglesias ft. Gente de Zona', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (110, 28, 2, N' "Robarte un Beso" - Carlos Vives ft. Sebastián Yatra', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (111, 28, 3, N' "Vivir Mi Vida" - Marc Anthony ', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (112, 28, 4, N'"Hawái" - Maluma
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (113, 29, 1, N' "Ella y Yo" - Don Omar ft. Aventura', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (114, 29, 2, N' "Robarte un Beso" - Carlos Vives ft. Sebastián Yatra  ', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (115, 29, 3, N') "Limón y Sal" - Julieta Venegas', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (116, 29, 4, N'"Bailando" - Enrique Iglesias ft. Gente de Zona', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (117, 30, 1, N'"Mía" - Bad Bunny ft. Drake', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (118, 30, 2, N'Martin Luther King Jr', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (119, 30, 3, N' "Hawái" - Maluma', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (120, 30, 4, N' "La Tortura" - Shakira ft. Alejandro Sanz
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (121, 31, 1, N'12:00
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (122, 31, 2, N'14:30', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (123, 31, 3, N'16:00
', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (124, 31, 4, N'17:30
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (125, 32, 1, N'81', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (126, 32, 2, N'93', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (127, 32, 3, N'83', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (128, 32, 4, N'87', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (129, 33, 1, N'1', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (130, 33, 2, N'4', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (131, 33, 3, N'2', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (132, 33, 4, N'3', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (133, 34, 1, N'4', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (134, 34, 2, N'3', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (135, 34, 3, N'6', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (136, 34, 4, N'5', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (137, 35, 1, N'4', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (138, 35, 2, N'5', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (139, 35, 3, N'6', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (140, 35, 4, N'7', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (141, 36, 1, N'CIDI', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (142, 36, 2, N'AMI', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (143, 36, 3, N'LUM', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (144, 36, 4, N'NAI', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (145, 37, 1, N'2', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (146, 37, 2, N'3', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (147, 37, 3, N'4', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (148, 37, 4, N'5', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (149, 38, 1, N'2', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (150, 38, 2, N'3', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (151, 38, 3, N'4', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (152, 38, 4, N'5', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (153, 39, 1, N'21 de Marzo
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (154, 39, 2, N'14 de Febrero
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (155, 39, 3, N'20 de Julio
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (156, 39, 4, N'1 de Agosto', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (157, 40, 1, N'Química', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (158, 40, 2, N'Producción artística
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (159, 40, 3, N'Mecatrónica', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (160, 40, 4, N'Informática', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (161, 41, 1, N'Intel 9
', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (162, 41, 2, N'Ryzen 5
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (163, 41, 3, N'Ryzen 7
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (164, 41, 4, N'Intel 8
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (165, 42, 1, N'72
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (166, 42, 2, N'60', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (167, 42, 3, N'68', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (168, 42, 4, N'62', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (169, 43, 1, N'4958-9000
', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (170, 43, 2, N'4974-4000
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (171, 43, 3, N'49823-2000
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (172, 43, 4, N'4896-1000
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (173, 44, 1, N'27', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (174, 44, 2, N'33', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (175, 44, 3, N'30', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (176, 44, 4, N'24', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (177, 45, 1, N'Sede Tigre
', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (178, 45, 2, N'Sede Almagro
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (179, 45, 3, N'Sede Belgrano
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (180, 45, 4, N'Ninguna es correcta', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (181, 46, 1, N'Alien', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (182, 46, 2, N'Ladrones de bicicletas
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (183, 46, 3, N'ET', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (184, 46, 4, N'El juego de Ender
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (185, 47, 1, N'Al diablo con el diablo
', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (186, 47, 2, N'El diablo viste a la moda
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (187, 47, 3, N'Anabelle
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (188, 47, 4, N'Zoolander
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (189, 48, 1, N'Jorge el curioso
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (190, 48, 2, N'King Kong
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (191, 48, 3, N'El libro de la selva
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (192, 48, 4, N'El planeta de los simios
', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (193, 49, 1, N'
Dune', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (194, 49, 2, N'Star Trek
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (195, 49, 3, N'Star Wars
', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (196, 49, 4, N'Wall-E
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (197, 50, 1, N'Peter pan
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (198, 50, 2, N'Piratas del Caribe
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (199, 50, 3, N'Tinker Bell: Hadas y piratas
', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (200, 50, 4, N'Titanic
', 0, N'0')
GO
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (201, 51, 1, N'A la deriva', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (202, 51, 2, N'Tiburón', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (203, 51, 3, N'Titanic', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (204, 51, 4, N'Barco fantasma', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (205, 52, 1, N'Robots', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (206, 52, 2, N'Wall-E', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (207, 52, 3, N'Yo, robot', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (208, 52, 4, N'Zathura', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (209, 53, 1, N'Willow', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (210, 53, 2, N'Game of Thrones', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (211, 53, 3, N'Shrek', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (212, 53, 4, N'El señor de los anillos', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (213, 54, 1, N'Spiderman, sin camino a casa', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (214, 54, 2, N'Venom', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (215, 54, 3, N'Spiderman 3', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (216, 54, 4, N'Spiderman, de regreso a casa', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (217, 55, 1, N'Chicas pesadas', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (218, 55, 2, N'Legalmente rubia', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (219, 55, 3, N'¿Y dónde están las rubias?', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (220, 55, 4, N'Barbie', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (221, 56, 1, N'Joker', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (222, 56, 2, N'IT', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (223, 56, 3, N'Terrifier', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (224, 56, 4, N'Terrifier 2', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (225, 57, 1, N'Flash', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (226, 57, 2, N'Mi pobre angelito', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (227, 57, 3, N'Forrest Gump', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (228, 57, 4, N'X-Men', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (229, 58, 1, N'La familia del futuro', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (230, 58, 2, N'Futurama', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (231, 58, 3, N'Volver al futuro', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (232, 58, 4, N'La máquina del tiempo', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (233, 59, 1, N'El rey león', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (234, 59, 2, N'Stranger things', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (235, 59, 3, N'Lucy', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (236, 59, 4, N'Carrie', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (237, 60, 1, N'El rey león', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (238, 60, 2, N'Frozen', 0, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (239, 60, 3, N'Narnia', 1, N'0')
INSERT [dbo].[Respuestas] ([idRespuesta], [idPregunta], [Opcion], [Contenido], [Correcta], [Foto]) VALUES (240, 60, 4, N'Alicia en el país de las maravillas', 0, N'0')
GO
ALTER TABLE [dbo].[Respuestas]  WITH CHECK ADD  CONSTRAINT [FK_Respuestas_Preguntas] FOREIGN KEY([idPregunta])
REFERENCES [dbo].[Preguntas] ([idPregunta])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Respuestas] CHECK CONSTRAINT [FK_Respuestas_Preguntas]
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerCategorias]    Script Date: 31/8/2023 15:58:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ObtenerCategorias]
as 
begin 
select * from Categorias 
end 
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerDificultades]    Script Date: 31/8/2023 15:58:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ObtenerDificultades]
as 
begin 
select * from Dificultades  
end 
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerPreguntas]    Script Date: 31/8/2023 15:58:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ObtenerPreguntas] 
@dificultad int,
@categoria int 
as 
begin 
if (@dificultad!=4) and (@categoria!=5)
select p.* from Preguntas p
inner join Dificultades d on d.idDificultad=p.idDificultad
inner join Categorias c on c.idCategoria=p.idCategoria 
where @dificultad = d.idDificultad and @categoria=c.idCategoria  
else 
select p.* from Preguntas p
end 
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerRespuestas]    Script Date: 31/8/2023 15:58:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_ObtenerRespuestas]
@pregunta int
as 
begin 
  select * from Respuestas where idpregunta=@pregunta 

end

GO
