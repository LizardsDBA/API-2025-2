#!/usr/bin/env bash
# ============================================================================
# API TG - Frontend JavaFX Scaffold
# Constrói a estrutura de telas (FXML), controllers e utilitário de navegação
# espelhando o wireframe (aluno/orientador/coordenação + login).
# Uso:
#   1) Salve este arquivo como scaffold_front.sh na raiz do projeto Maven.
#   2) Execute: bash scaffold_front.sh
#   3) Rode o app: mvn javafx:run
# Obs.: O script cria/atualiza apenas arquivos do FRONT (JavaFX). Ajuste o pom.xml
# para Java 21 + JavaFX 21 se necessário (vide trecho ao final).
# ============================================================================
set -euo pipefail

base="src/main"
java_dir="$base/java/br/edu/fatec/api"
res_dir="$base/resources"
views_dir="$res_dir/views"

mkdir -p "$java_dir/nav" \
         "$java_dir/controller/aluno" \
         "$java_dir/controller/orientador" \
         "$java_dir/controller/coordenacao" \
         "$views_dir/login" \
         "$views_dir/aluno" \
         "$views_dir/orientador" \
         "$views_dir/coordenacao"

# ----------------------------------------------------------------------------
# App.java
# ----------------------------------------------------------------------------
cat > "$java_dir/App.java" <<'EOF'
package br.edu.fatec.api;

import br.edu.fatec.api.nav.SceneManager;
import javafx.application.Application;
import javafx.stage.Stage;

public class App extends Application {
  @Override public void start(Stage stage) {
    SceneManager.init(stage, 1200, 720, "/application.css");
    SceneManager.go("login/Login.fxml");
    stage.setTitle("API/TG - Plataforma");
    stage.show();
  }
  public static void main(String[] args){ launch(args); }
}
EOF

# ----------------------------------------------------------------------------
# SceneManager.java
# ----------------------------------------------------------------------------
cat > "$java_dir/nav/SceneManager.java" <<'EOF'
package br.edu.fatec.api.nav;

import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public final class SceneManager {
  private static Stage stage;
  private static double width, height;
  private static String css;
  private SceneManager() {}
  public static void init(Stage stg, double w, double h, String cssPath){
    stage = stg; width = w; height = h; css = cssPath;
  }
  public static void go(String fxmlPath){
    try{
      Parent root = FXMLLoader.load(SceneManager.class.getResource("/views/" + fxmlPath));
      Scene scene = new Scene(root, width, height);
      if(css != null) scene.getStylesheets().add(SceneManager.class.getResource(css).toExternalForm());
      stage.setScene(scene);
    }catch(Exception e){
      throw new RuntimeException("Falha ao abrir FXML: " + fxmlPath, e);
    }
  }
}
EOF

# ----------------------------------------------------------------------------
# Controllers comuns (Login)
# ----------------------------------------------------------------------------
cat > "$java_dir/controller/LoginController.java" <<'EOF'
package br.edu.fatec.api.controller;

import br.edu.fatec.api.nav.SceneManager;

public class LoginController {
  public void goAluno(){ SceneManager.go("aluno/Dashboard.fxml"); }
  public void goOrientador(){ SceneManager.go("orientador/VisaoGeral.fxml"); }
  public void goCoordenador(){ SceneManager.go("coordenacao/VisaoGeral.fxml"); }
}
EOF

# ----------------------------------------------------------------------------
# Controllers - Aluno
# ----------------------------------------------------------------------------
cat > "$java_dir/controller/aluno/DashboardAlunoController.java" <<'EOF'
package br.edu.fatec.api.controller.aluno;

import br.edu.fatec.api.nav.SceneManager;

public class DashboardAlunoController {
  public void goInbox(){ SceneManager.go("aluno/Inbox.fxml"); }
  public void goEditor(){ SceneManager.go("aluno/Editor.fxml"); }
  public void goHistorico(){ SceneManager.go("aluno/Historico.fxml"); }
  public void goConclusao(){ SceneManager.go("aluno/Conclusao.fxml"); }
  public void goComparar(){ SceneManager.go("aluno/Comparar.fxml"); }
  public void goChat(){ SceneManager.go("aluno/Chat.fxml"); }
}
EOF

cat > "$java_dir/controller/aluno/InboxAlunoController.java" <<'EOF'
package br.edu.fatec.api.controller.aluno;

import br.edu.fatec.api.nav.SceneManager;
import javafx.fxml.FXML;
import javafx.scene.control.TableView;

public class InboxAlunoController {
  @FXML private TableView<?> tblMensagens;
  public void goEditor(){ SceneManager.go("aluno/Editor.fxml"); }
  public void goDashboard(){ SceneManager.go("aluno/Dashboard.fxml"); }
}
EOF

cat > "$java_dir/controller/aluno/EditorAlunoController.java" <<'EOF'
package br.edu.fatec.api.controller.aluno;

import br.edu.fatec.api.nav.SceneManager;
import javafx.fxml.FXML;
import javafx.scene.control.TextArea;

public class EditorAlunoController {
  @FXML private TextArea txtMarkdown;
  public void salvar(){ /* TODO: chamar service/DAO para inserir nova versão */ }
  public void enviar(){ /* TODO: notificar orientador */ }
  public void voltar(){ SceneManager.go("aluno/Dashboard.fxml"); }
}
EOF

cat > "$java_dir/controller/aluno/CompararAlunoController.java" <<'EOF'
package br.edu.fatec.api.controller.aluno;

import br.edu.fatec.api.nav.SceneManager;

public class CompararAlunoController {
  public void voltar(){ SceneManager.go("aluno/Dashboard.fxml"); }
}
EOF

cat > "$java_dir/controller/aluno/ConclusaoAlunoController.java" <<'EOF'
package br.edu.fatec.api.controller.aluno;

import br.edu.fatec.api.nav.SceneManager;

public class ConclusaoAlunoController {
  public void voltar(){ SceneManager.go("aluno/Dashboard.fxml"); }
}
EOF

cat > "$java_dir/controller/aluno/HistoricoAlunoController.java" <<'EOF'
package br.edu.fatec.api.controller.aluno;

import br.edu.fatec.api.nav.SceneManager;

public class HistoricoAlunoController {
  public void voltar(){ SceneManager.go("aluno/Dashboard.fxml"); }
}
EOF

cat > "$java_dir/controller/aluno/ChatAlunoController.java" <<'EOF'
package br.edu.fatec.api.controller.aluno;

import br.edu.fatec.api.nav.SceneManager;

public class ChatAlunoController {
  public void voltar(){ SceneManager.go("aluno/Dashboard.fxml"); }
}
EOF

# ----------------------------------------------------------------------------
# Controllers - Orientador
# ----------------------------------------------------------------------------
cat > "$java_dir/controller/orientador/VisaoGeralOrientadorController.java" <<'EOF'
package br.edu.fatec.api.controller.orientador;

import br.edu.fatec.api.nav.SceneManager;

public class VisaoGeralOrientadorController {
  public void goPainel(){ SceneManager.go("orientador/Painel.fxml"); }
  public void goNotificacoes(){ SceneManager.go("orientador/Notificacoes.fxml"); }
}
EOF

cat > "$java_dir/controller/orientador/PainelOrientadorController.java" <<'EOF'
package br.edu.fatec.api.controller.orientador;

import br.edu.fatec.api.nav.SceneManager;
import javafx.fxml.FXML;
import javafx.scene.control.TableView;

public class PainelOrientadorController {
  @FXML private TableView<?> tblPendencias;
  public void goVisaoGeral(){ SceneManager.go("orientador/VisaoGeral.fxml"); }
  public void abrirEditor(){ SceneManager.go("orientador/Editor.fxml"); }
  public void abrirChat(){ SceneManager.go("orientador/Chat.fxml"); }
}
EOF

cat > "$java_dir/controller/orientador/EditorOrientadorController.java" <<'EOF'
package br.edu.fatec.api.controller.orientador;

import br.edu.fatec.api.nav.SceneManager;
import javafx.fxml.FXML;
import javafx.scene.control.TextArea;

public class EditorOrientadorController {
  @FXML private TextArea txtMarkdown;
  public void comentar(){ /* TODO: inserir feedback inline */ }
  public void voltar(){ SceneManager.go("orientador/Painel.fxml"); }
}
EOF

cat > "$java_dir/controller/orientador/NotificacoesOrientadorController.java" <<'EOF'
package br.edu.fatec.api.controller.orientador;

import br.edu.fatec.api.nav.SceneManager;

public class NotificacoesOrientadorController {
  public void voltar(){ SceneManager.go("orientador/VisaoGeral.fxml"); }
}
EOF

cat > "$java_dir/controller/orientador/ParecerOrientadorController.java" <<'EOF'
package br.edu.fatec.api.controller.orientador;

import br.edu.fatec.api.nav.SceneManager;

public class ParecerOrientadorController {
  public void voltar(){ SceneManager.go("orientador/Painel.fxml"); }
}
EOF

cat > "$java_dir/controller/orientador/ChatOrientadorController.java" <<'EOF'
package br.edu.fatec.api.controller.orientador;

import br.edu.fatec.api.nav.SceneManager;

public class ChatOrientadorController {
  public void voltar(){ SceneManager.go("orientador/Painel.fxml"); }
}
EOF

cat > "$java_dir/controller/orientador/ImportarOrientadorController.java" <<'EOF'
package br.edu.fatec.api.controller.orientador;

import br.edu.fatec.api.nav.SceneManager;

public class ImportarOrientadorController {
  public void voltar(){ SceneManager.go("orientador/VisaoGeral.fxml"); }
}
EOF

# ----------------------------------------------------------------------------
# Controllers - Coordenação
# ----------------------------------------------------------------------------
cat > "$java_dir/controller/coordenacao/VisaoGeralCoordController.java" <<'EOF'
package br.edu.fatec.api.controller.coordenacao;

import br.edu.fatec.api.nav.SceneManager;

public class VisaoGeralCoordController {
  public void goMapa(){ SceneManager.go("coordenacao/Mapa.fxml"); }
  public void goAndamento(){ SceneManager.go("coordenacao/Andamento.fxml"); }
}
EOF

cat > "$java_dir/controller/coordenacao/MapaCoordController.java" <<'EOF'
package br.edu.fatec.api.controller.coordenacao;

import br.edu.fatec.api.nav.SceneManager;

public class MapaCoordController {
  public void voltar(){ SceneManager.go("coordenacao/VisaoGeral.fxml"); }
}
EOF

cat > "$java_dir/controller/coordenacao/AndamentoCoordController.java" <<'EOF'
package br.edu.fatec.api.controller.coordenacao;

import br.edu.fatec.api.nav.SceneManager;

public class AndamentoCoordController {
  public void voltar(){ SceneManager.go("coordenacao/VisaoGeral.fxml"); }
}
EOF

# ----------------------------------------------------------------------------
# CSS
# ----------------------------------------------------------------------------
cat > "$res_dir/application.css" <<'EOF'
.root { -fx-font-family: "Segoe UI", "Roboto", system-ui; -fx-base: #f2f2f2; }
.card { -fx-background-color: white; -fx-border-color: #d6d6d6; -fx-background-insets: 0; -fx-background-radius: 12; -fx-border-radius: 12; -fx-effect: dropshadow(gaussian, rgba(0,0,0,.06), 8, 0, 0, 2); -fx-padding: 12; }
.btn { -fx-background-color: linear-gradient(#fbfbfb,#efefef); -fx-border-color: #d6d6d6; -fx-background-radius: 8; -fx-border-radius: 8; -fx-font-weight: 600; }
.btn-primary { -fx-background-color: linear-gradient(#3e86ea,#366fc5); -fx-text-fill: white; -fx-border-color: #2f62ac; }
.kpi { -fx-alignment: center; -fx-font-weight: 700; -fx-background-color: linear-gradient(#ffffff,#f7f7f7); -fx-border-color: #d6d6d6; -fx-background-radius: 8; -fx-border-radius: 8; -fx-min-height: 100; -fx-max-height: 100; }
.pill { -fx-background-color: #edf2ff; -fx-text-fill: #315ea8; -fx-border-color: #cfe0ff; -fx-padding: 2 8; -fx-background-radius: 999; -fx-border-radius: 999; }
.title { -fx-font-size:20; -fx-font-weight:700; }
.subtle { -fx-text-fill:#6f6f6f; }
EOF

# ----------------------------------------------------------------------------
# FXML - Login
# ----------------------------------------------------------------------------
cat > "$views_dir/login/Login.fxml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.geometry.*?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<StackPane xmlns="http://javafx.com/javafx/21" xmlns:fx="http://javafx.com/fxml/1" fx:controller="br.edu.fatec.api.controller.LoginController" padding="12">
  <VBox maxWidth="520" spacing="12" alignment="CENTER" styleClass="card">
    <Label text="Login" styleClass="title"/>
    <Label text="Use os botões para simular o perfil" styleClass="subtle"/>
    <GridPane hgap="8" vgap="8">
      <columnConstraints><ColumnConstraints percentWidth="30"/><ColumnConstraints percentWidth="70"/></columnConstraints>
      <Label text="Usuário" GridPane.rowIndex="0"/>
      <TextField promptText="simulado" GridPane.rowIndex="0" GridPane.columnIndex="1"/>
      <Label text="Senha" GridPane.rowIndex="1"/>
      <PasswordField promptText="simulado" GridPane.rowIndex="1" GridPane.columnIndex="1"/>
    </GridPane>
    <HBox spacing="8">
      <Button text="Entrar como Aluno" styleClass="btn btn-primary" onAction="#goAluno"/>
      <Button text="Orientador" styleClass="btn" onAction="#goOrientador"/>
      <Button text="Coordenador" styleClass="btn" onAction="#goCoordenador"/>
    </HBox>
  </VBox>
</StackPane>
EOF

# ----------------------------------------------------------------------------
# FXML - Aluno
# ----------------------------------------------------------------------------
cat > "$views_dir/aluno/Dashboard.fxml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.layout.*?>
<?import javafx.scene.control.*?>
<VBox xmlns="http://javafx.com/javafx/21" xmlns:fx="http://javafx.com/fxml/1" fx:controller="br.edu.fatec.api.controller.aluno.DashboardAlunoController" spacing="12" padding="12">
  <Label text="Aluno — Dashboard" styleClass="title"/>
  <Label text="Atalhos e status do seu TG." styleClass="subtle"/>
  <HBox spacing="12">
    <StackPane styleClass="card kpi"><Label text="% Conclusão — 48%"/></StackPane>
    <StackPane styleClass="card kpi"><Label text="Pendências — 3"/></StackPane>
    <StackPane styleClass="card kpi"><Label text="Última versão — v1.4"/></StackPane>
  </HBox>
  <HBox spacing="8">
    <Button text="Inbox" styleClass="btn" onAction="#goInbox"/>
    <Button text="Editor Markdown" styleClass="btn" onAction="#goEditor"/>
    <Button text="Histórico" styleClass="btn" onAction="#goHistorico"/>
    <Button text="Comparar" styleClass="btn" onAction="#goComparar"/>
    <Button text="% Conclusão" styleClass="btn" onAction="#goConclusao"/>
    <Button text="Chat" styleClass="btn" onAction="#goChat"/>
  </HBox>
</VBox>
EOF

cat > "$views_dir/aluno/Inbox.fxml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<VBox xmlns="http://javafx.com/javafx/21" xmlns:fx="http://javafx.com/fxml/1" fx:controller="br.edu.fatec.api.controller.aluno.InboxAlunoController" spacing="12" padding="12">
  <Label text="Aluno — Inbox" styleClass="title"/>
  <TableView fx:id="tblMensagens" prefHeight="420" styleClass="card">
    <columns>
      <TableColumn text="Seção" prefWidth="160"/>
      <TableColumn text="Versão" prefWidth="80"/>
      <TableColumn text="Mensagem" prefWidth="520"/>
      <TableColumn text="Status" prefWidth="120"/>
    </columns>
  </TableView>
  <HBox spacing="8">
    <Button text="Abrir Editor" styleClass="btn" onAction="#goEditor"/>
    <Button text="Voltar" styleClass="btn" onAction="#goDashboard"/>
  </HBox>
</VBox>
EOF

cat > "$views_dir/aluno/Editor.fxml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<VBox xmlns="http://javafx.com/javafx/21" xmlns:fx="http://javafx.com/fxml/1" fx:controller="br.edu.fatec.api.controller.aluno.EditorAlunoController" spacing="12" padding="12">
  <Label text="Aluno — Editor Markdown" styleClass="title"/>
  <SplitPane dividerPositions="0.5">
    <TextArea fx:id="txtMarkdown" promptText="# Markdown aqui"/>
    <ScrollPane fitToWidth="true"><Label text="(Preview)"/></ScrollPane>
  </SplitPane>
  <HBox spacing="8">
    <Button text="Salvar" styleClass="btn btn-primary" onAction="#salvar"/>
    <Button text="Enviar para revisão" styleClass="btn" onAction="#enviar"/>
    <Button text="Voltar" styleClass="btn" onAction="#voltar"/>
  </HBox>
</VBox>
EOF

cat > "$views_dir/aluno/Comparar.fxml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<VBox xmlns="http://javafx.com/javafx/21" xmlns:fx="http://javafx.com/fxml/1" fx:controller="br.edu.fatec.api.controller.aluno.CompararAlunoController" spacing="12" padding="12">
  <Label text="Aluno — Comparar versões" styleClass="title"/>
  <HBox spacing="8">
    <ComboBox promptText="Versão A"/>
    <ComboBox promptText="Versão B"/>
  </HBox>
  <SplitPane dividerPositions="0.5">
    <ScrollPane fitToWidth="true"><Label text="Texto A"/></ScrollPane>
    <ScrollPane fitToWidth="true"><Label text="Texto B"/></ScrollPane>
  </SplitPane>
  <Button text="Voltar" styleClass="btn" onAction="#voltar"/>
</VBox>
EOF

cat > "$views_dir/aluno/Conclusao.fxml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<VBox xmlns="http://javafx.com/javafx/21" xmlns:fx="http://javafx.com/fxml/1" fx:controller="br.edu.fatec.api.controller.aluno.ConclusaoAlunoController" spacing="12" padding="12">
  <Label text="Aluno — % Conclusão" styleClass="title"/>
  <TableView prefHeight="480" styleClass="card">
    <columns>
      <TableColumn text="Seção" prefWidth="240"/>
      <TableColumn text="Status" prefWidth="180"/>
      <TableColumn text="%" prefWidth="80"/>
      <TableColumn text="Atualizado em" prefWidth="220"/>
    </columns>
  </TableView>
  <Button text="Voltar" styleClass="btn" onAction="#voltar"/>
</VBox>
EOF

cat > "$views_dir/aluno/Historico.fxml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<VBox xmlns="http://javafx.com/javafx/21" xmlns:fx="http://javafx.com/fxml/1" fx:controller="br.edu.fatec.api.controller.aluno.HistoricoAlunoController" spacing="12" padding="12">
  <Label text="Aluno — Histórico" styleClass="title"/>
  <TableView prefHeight="480" styleClass="card">
    <columns>
      <TableColumn text="Seção" prefWidth="240"/>
      <TableColumn text="Versão" prefWidth="120"/>
      <TableColumn text="Criado em" prefWidth="240"/>
      <TableColumn text="Resumo" prefWidth="300"/>
    </columns>
  </TableView>
  <Button text="Voltar" styleClass="btn" onAction="#voltar"/>
</VBox>
EOF

cat > "$views_dir/aluno/Chat.fxml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<BorderPane xmlns="http://javafx.com/javafx/21" xmlns:fx="http://javafx.com/fxml/1" fx:controller="br.edu.fatec.api.controller.aluno.ChatAlunoController" padding="12">
  <top><Label text="Aluno — Chat" styleClass="title"/></top>
  <center>
    <ListView/>
  </center>
  <bottom>
    <HBox spacing="8">
      <TextField promptText="Digite uma mensagem" HBox.hgrow="ALWAYS"/>
      <Button text="Enviar" styleClass="btn"/>
      <Button text="Voltar" styleClass="btn" onAction="#voltar"/>
    </HBox>
  </bottom>
</BorderPane>
EOF

# ----------------------------------------------------------------------------
# FXML - Orientador
# ----------------------------------------------------------------------------
cat > "$views_dir/orientador/VisaoGeral.fxml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.layout.*?>
<?import javafx.scene.control.*?>
<VBox xmlns="http://javafx.com/javafx/21" xmlns:fx="http://javafx.com/fxml/1" fx:controller="br.edu.fatec.api.controller.orientador.VisaoGeralOrientadorController" spacing="12" padding="12">
  <Label text="Orientador — Visão Geral" styleClass="title"/>
  <HBox spacing="12">
    <StackPane styleClass="card kpi"><Label text="Alunos — 8"/></StackPane>
    <StackPane styleClass="card kpi"><Label text="Pendências — 5"/></StackPane>
    <StackPane styleClass="card kpi"><Label text="Novas versões — 2"/></StackPane>
  </HBox>
  <HBox spacing="8">
    <Button text="Painel de Pendências" styleClass="btn" onAction="#goPainel"/>
    <Button text="Notificações" styleClass="btn" onAction="#goNotificacoes"/>
  </HBox>
</VBox>
EOF

cat > "$views_dir/orientador/Painel.fxml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<VBox xmlns="http://javafx.com/javafx/21" xmlns:fx="http://javafx.com/fxml/1" fx:controller="br.edu.fatec.api.controller.orientador.PainelOrientadorController" spacing="12" padding="12">
  <Label text="Orientador — Painel de Pendências" styleClass="title"/>
  <TableView fx:id="tblPendencias" prefHeight="420" styleClass="card">
    <columns>
      <TableColumn text="Aluno" prefWidth="160"/>
      <TableColumn text="Seção" prefWidth="160"/>
      <TableColumn text="Versão" prefWidth="80"/>
      <TableColumn text="Pedido" prefWidth="280"/>
      <TableColumn text="Prioridade" prefWidth="120"/>
      <TableColumn text="Ações" prefWidth="180"/>
    </columns>
  </TableView>
  <HBox spacing="8">
    <Button text="Abrir Editor" styleClass="btn" onAction="#abrirEditor"/>
    <Button text="Abrir Chat" styleClass="btn" onAction="#abrirChat"/>
    <Button text="Voltar" styleClass="btn" onAction="#goVisaoGeral"/>
  </HBox>
</VBox>
EOF

cat > "$views_dir/orientador/Editor.fxml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<VBox xmlns="http://javafx.com/javafx/21" xmlns:fx="http://javafx.com/fxml/1" fx:controller="br.edu.fatec.api.controller.orientador.EditorOrientadorController" spacing="12" padding="12">
  <Label text="Orientador — Editor/Correção" styleClass="title"/>
  <SplitPane dividerPositions="0.5">
    <ScrollPane fitToWidth="true"><Label text="Texto do aluno"/></ScrollPane>
    <TextArea fx:id="txtMarkdown" promptText="Comentário / feedback"/>
  </SplitPane>
  <HBox spacing="8">
    <Button text="Comentar" styleClass="btn btn-primary" onAction="#comentar"/>
    <Button text="Voltar" styleClass="btn" onAction="#voltar"/>
  </HBox>
</VBox>
EOF

cat > "$views_dir/orientador/Notificacoes.fxml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<VBox xmlns="http://javafx.com/javafx/21" xmlns:fx="http://javafx.com/fxml/1" fx:controller="br.edu.fatec.api.controller.orientador.NotificacoesOrientadorController" spacing="12" padding="12">
  <Label text="Orientador — Notificações" styleClass="title"/>
  <ListView prefHeight="480"/>
  <Button text="Voltar" styleClass="btn" onAction="#voltar"/>
</VBox>
EOF

cat > "$views_dir/orientador/Parecer.fxml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<VBox xmlns="http://javafx.com/javafx/21" xmlns:fx="http://javafx.com/fxml/1" fx:controller="br.edu.fatec.api.controller.orientador.ParecerOrientadorController" spacing="12" padding="12">
  <Label text="Orientador — Parecer" styleClass="title"/>
  <TextArea promptText="Parecer final" prefRowCount="10"/>
  <Button text="Voltar" styleClass="btn" onAction="#voltar"/>
</VBox>
EOF

cat > "$views_dir/orientador/Chat.fxml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<BorderPane xmlns="http://javafx.com/javafx/21" xmlns:fx="http://javafx.com/fxml/1" fx:controller="br.edu.fatec.api.controller.orientador.ChatOrientadorController" padding="12">
  <top><Label text="Orientador — Chat" styleClass="title"/></top>
  <center><ListView/></center>
  <bottom>
    <HBox spacing="8">
      <TextField promptText="Digite uma mensagem" HBox.hgrow="ALWAYS"/>
      <Button text="Enviar" styleClass="btn"/>
      <Button text="Voltar" styleClass="btn" onAction="#voltar"/>
    </HBox>
  </bottom>
</BorderPane>
EOF

cat > "$views_dir/orientador/Importar.fxml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<VBox xmlns="http://javafx.com/javafx/21" xmlns:fx="http://javafx.com/fxml/1" fx:controller="br.edu.fatec.api.controller.orientador.ImportarOrientadorController" spacing="12" padding="12">
  <Label text="Orientador — Importar Formulários" styleClass="title"/>
  <HBox spacing="8"><Button text="Escolher arquivo" styleClass="btn"/><Label text="Nenhum arquivo selecionado"/></HBox>
  <TableView prefHeight="420" styleClass="card">
    <columns>
      <TableColumn text="Arquivo" prefWidth="280"/>
      <TableColumn text="Itens válidos" prefWidth="140"/>
      <TableColumn text="Itens inválidos" prefWidth="140"/>
      <TableColumn text="Status" prefWidth="160"/>
    </columns>
  </TableView>
  <Button text="Voltar" styleClass="btn" onAction="#voltar"/>
</VBox>
EOF

# ----------------------------------------------------------------------------
# FXML - Coordenação
# ----------------------------------------------------------------------------
cat > "$views_dir/coordenacao/VisaoGeral.fxml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.layout.*?>
<?import javafx.scene.control.*?>
<VBox xmlns="http://javafx.com/javafx/21" xmlns:fx="http://javafx.com/fxml/1" fx:controller="br.edu.fatec.api.controller.coordenacao.VisaoGeralCoordController" spacing="12" padding="12">
  <Label text="Coordenação — Visão Geral" styleClass="title"/>
  <HBox spacing="12">
    <StackPane styleClass="card kpi"><Label text="Orientações ativas — 12"/></StackPane>
    <StackPane styleClass="card kpi"><Label text="Portfólios finalizados — 3"/></StackPane>
    <StackPane styleClass="card kpi"><Label text="Pendências — 4"/></StackPane>
  </HBox>
  <HBox spacing="8">
    <Button text="Mapa de Orientação" styleClass="btn" onAction="#goMapa"/>
    <Button text="Andamento" styleClass="btn" onAction="#goAndamento"/>
  </HBox>
</VBox>
EOF

cat > "$views_dir/coordenacao/Mapa.fxml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<VBox xmlns="http://javafx.com/javafx/21" xmlns:fx="http://javafx.com/fxml/1" fx:controller="br.edu.fatec.api.controller.coordenacao.MapaCoordController" spacing="12" padding="12">
  <Label text="Coordenação — Mapa de Orientação" styleClass="title"/>
  <TableView prefHeight="480" styleClass="card">
    <columns>
      <TableColumn text="Professor" prefWidth="240"/>
      <TableColumn text="Aluno" prefWidth="240"/>
      <TableColumn text="Status" prefWidth="200"/>
      <TableColumn text="Última atualização" prefWidth="220"/>
    </columns>
  </TableView>
  <Button text="Voltar" styleClass="btn" onAction="#voltar"/>
</VBox>
EOF

cat > "$views_dir/coordenacao/Andamento.fxml" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>
<VBox xmlns="http://javafx.com/javafx/21" xmlns:fx="http://javafx.com/fxml/1" fx:controller="br.edu.fatec.api.controller.coordenacao.AndamentoCoordController" spacing="12" padding="12">
  <Label text="Coordenação — Andamento" styleClass="title"/>
  <TableView prefHeight="480" styleClass="card">
    <columns>
      <TableColumn text="Aluno" prefWidth="240"/>
      <TableColumn text="Seção" prefWidth="240"/>
      <TableColumn text="%" prefWidth="80"/>
      <TableColumn text="Status" prefWidth="200"/>
    </columns>
  </TableView>
  <Button text="Voltar" styleClass="btn" onAction="#voltar"/>
</VBox>
EOF

# ----------------------------------------------------------------------------
# Dica de pom.xml (se precisar ajustar)
# ----------------------------------------------------------------------------
cat > "$res_dir/README_front_scaffold.txt" <<'EOF'
Ajustes sugeridos no pom.xml (Java 21 + JavaFX 21):

<properties>
  <maven.compiler.release>21</maven.compiler.release>
  <javafx.version>21.0.4</javafx.version>
</properties>

<dependencies>
  <dependency>
    <groupId>org.openjfx</groupId>
    <artifactId>javafx-controls</artifactId>
    <version>${javafx.version}</version>
  </dependency>
  <dependency>
    <groupId>org.openjfx</groupId>
    <artifactId>javafx-fxml</artifactId>
    <version>${javafx.version}</version>
  </dependency>
  <dependency>
    <groupId>org.xerial</groupId>
    <artifactId>sqlite-jdbc</artifactId>
    <version>3.45.3.0</version>
  </dependency>
</dependencies>

<build>
  <plugins>
    <plugin>
      <groupId>org.apache.maven.plugins</groupId>
      <artifactId>maven-compiler-plugin</artifactId>
      <version>3.11.0</version>
      <configuration>
        <release>${maven.compiler.release}</release>
      </configuration>
    </plugin>
    <plugin>
      <groupId>org.openjfx</groupId>
      <artifactId>javafx-maven-plugin</artifactId>
      <version>0.0.8</version>
      <configuration>
        <mainClass>br.edu.fatec.api.App</mainClass>
      </configuration>
    </plugin>
  </plugins>
</build>
EOF

# ----------------------------------------------------------------------------
# Fim
# ----------------------------------------------------------------------------
echo "OK ✅ \nArquivos do FRONT criados. Para rodar: mvn javafx:run"
