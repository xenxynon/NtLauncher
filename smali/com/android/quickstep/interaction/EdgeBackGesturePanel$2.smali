.class Lcom/android/quickstep/interaction/EdgeBackGesturePanel$2;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/interaction/EdgeBackGesturePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/android/quickstep/interaction/EdgeBackGesturePanel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;)F
    .locals 0

    invoke-static {p1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->access$100(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$2;->getValue(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;F)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->access$000(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$2;->setValue(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;F)V

    return-void
.end method
