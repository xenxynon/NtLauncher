.class Lcom/android/quickstep/views/ClearAllButton$1;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/ClearAllButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/quickstep/views/ClearAllButton;",
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
.method public get(Lcom/android/quickstep/views/ClearAllButton;)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Lcom/android/quickstep/views/ClearAllButton;->access$000(Lcom/android/quickstep/views/ClearAllButton;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/ClearAllButton$1;->get(Lcom/android/quickstep/views/ClearAllButton;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Float;

    invoke-super {p0, p1, p2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method public setValue(Lcom/android/quickstep/views/ClearAllButton;F)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/ClearAllButton;->setVisibilityAlpha(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/ClearAllButton$1;->setValue(Lcom/android/quickstep/views/ClearAllButton;F)V

    return-void
.end method