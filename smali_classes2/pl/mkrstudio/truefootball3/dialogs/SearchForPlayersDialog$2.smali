.class Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;
.super Ljava/lang/Object;
.source "SearchForPlayersDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$sp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;->val$sp:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const-string p1, "includeRandom"

    const-string v0, "includeEdited"

    const-string v1, "maxSkill"

    const-string v2, "maxAge"

    const-string v3, "minSkill"

    const-string v4, "minAge"

    .line 109
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 110
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->playerNameEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->playerClubEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "club"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    const-string v7, "-"

    if-lez v6, :cond_0

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->positionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    const-string v8, "position"

    invoke-interface {v5, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_1
    const-string v6, "country"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    :try_start_0
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->minAgeEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/16 v6, 0x10

    .line 117
    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 120
    :goto_1
    :try_start_1
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->minSkillEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const/16 v4, 0x46

    .line 122
    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 125
    :goto_2
    :try_start_2
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxAgeEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    const/16 v3, 0x28

    .line 127
    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    :goto_3
    :try_start_3
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxSkillEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    const/16 v2, 0x63

    .line 132
    invoke-interface {v5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_4
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 135
    :try_start_4
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->editedPlayersCB:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_5

    :cond_2
    const/4 v3, 0x0

    :goto_5
    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    .line 137
    :catch_4
    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 140
    :goto_6
    :try_start_5
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->randomPlayersCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_7

    :cond_3
    const/4 v0, 0x0

    :goto_7
    invoke-interface {v5, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    .line 142
    :catch_5
    invoke-interface {v5, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 144
    :goto_8
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iput-boolean v2, p1, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->search:Z

    .line 146
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$2;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->dismiss()V

    return-void
.end method
