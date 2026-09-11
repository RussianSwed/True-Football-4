.class Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$1;
.super Ljava/lang/Object;
.source "NewFormationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 170
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    const v0, 0x7f08018f

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->formationName:Ljava/lang/String;

    .line 172
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->formationName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 173
    new-instance p1, Landroid/app/Dialog;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a0033

    .line 175
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f08010f

    .line 176
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c03e8

    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f080259

    .line 178
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 179
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$1$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$1$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 187
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt p1, v1, :cond_2

    .line 188
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "tf3Settings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 189
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 190
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 191
    :goto_0
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v2, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    iget-object v5, v5, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/enums/Position;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "formation_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    iget-object v5, v5, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->formationName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "customFormations"

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->formationName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    iput-boolean v0, p1, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->isCreated:Z

    .line 205
    :cond_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->dismiss()V

    :goto_1
    return-void
.end method
