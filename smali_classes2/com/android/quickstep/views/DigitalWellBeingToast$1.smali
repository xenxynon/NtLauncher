.class Lcom/android/quickstep/views/DigitalWellBeingToast$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/DigitalWellBeingToast;->setBannerOutline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/DigitalWellBeingToast;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/DigitalWellBeingToast;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast$1;->this$0:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast$1;->this$0:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-static {v0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->access$000(Lcom/android/quickstep/views/DigitalWellBeingToast;)Landroid/view/ViewOutlineProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast$1;->this$0:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-static {v0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->access$000(Lcom/android/quickstep/views/DigitalWellBeingToast;)Landroid/view/ViewOutlineProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/quickstep/views/DigitalWellBeingToast;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setBannerOutline mOldBannerOutlineProvider is null"

    invoke-static {v0, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    iget-object p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast$1;->this$0:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-static {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->access$200(Lcom/android/quickstep/views/DigitalWellBeingToast;)F

    move-result p0

    add-float/2addr p1, p0

    const/4 p0, 0x0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Outline;->offset(II)V

    return-void
.end method
