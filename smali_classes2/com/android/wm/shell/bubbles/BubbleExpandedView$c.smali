.class Lcom/android/wm/shell/bubbles/BubbleExpandedView$c;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/BubbleExpandedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/wm/shell/bubbles/BubbleExpandedView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Ljava/lang/Float;
    .locals 0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/android/wm/shell/bubbles/BubbleExpandedView;F)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->setBackgroundAlpha(F)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$c;->a(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Float;

    invoke-super {p0, p1, p2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView$c;->b(Lcom/android/wm/shell/bubbles/BubbleExpandedView;F)V

    return-void
.end method
