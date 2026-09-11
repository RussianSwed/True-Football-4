.class Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$3;
.super Ljava/lang/Object;
.source "MotivationalSpeechFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 107
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment;->msListener:Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$OnButtonClickedListener;

    invoke-interface {p1}, Lpl/mkrstudio/truefootball3/fragments/MotivationalSpeechFragment$OnButtonClickedListener;->onContinueGameButtonClicked()V

    return-void
.end method
