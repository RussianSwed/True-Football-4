.class Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$15;
.super Ljava/lang/Object;
.source "SearchForPlayersDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->initMaxSkillEditText(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 454
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$15;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    const-string p1, "1"

    if-nez p2, :cond_0

    .line 459
    :try_start_0
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$15;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxSkillEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    .line 460
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$15;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxSkillEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    :catch_0
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog$15;->this$0:Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object p2, p2, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->maxSkillEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void
.end method
