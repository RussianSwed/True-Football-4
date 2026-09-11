.class Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog$1;
.super Ljava/lang/Object;
.source "LanguageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;

.field final synthetic val$j:I

.field final synthetic val$locales:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;[Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$locales",
            "val$j"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog$1;->val$locales:[Ljava/lang/String;

    iput p3, p0, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog$1;->val$j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 81
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->listener:Lpl/mkrstudio/truefootball3/activities/ILanguageChooseListener;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog$1;->val$locales:[Ljava/lang/String;

    iget v1, p0, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog$1;->val$j:I

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Lpl/mkrstudio/truefootball3/activities/ILanguageChooseListener;->onLanguageChosen(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->dismiss()V

    return-void
.end method
