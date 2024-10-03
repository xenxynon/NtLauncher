.class final Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/AodAnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TintInfo"
.end annotation


# instance fields
.field private mHasTintBlendMode:Z

.field private mHasTintList:Z

.field private mTintBlendMode:Landroid/graphics/BlendMode;

.field private mTintList:Landroid/content/res/ColorStateList;

.field final synthetic this$0:Lcom/nothing/cardwidget/AodAnalogClock;


# direct methods
.method public constructor <init>(Lcom/nothing/cardwidget/AodAnalogClock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->this$0:Lcom/nothing/cardwidget/AodAnalogClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "drawable.mutate()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->mHasTintList:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v1, p0, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->mHasTintBlendMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->this$0:Lcom/nothing/cardwidget/AodAnalogClock;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-object v0
.end method

.method public final getMHasTintBlendMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->mHasTintBlendMode:Z

    return p0
.end method

.method public final getMHasTintList()Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->mHasTintList:Z

    return p0
.end method

.method public final getMTintBlendMode()Landroid/graphics/BlendMode;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    return-object p0
.end method

.method public final getMTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public final setMHasTintBlendMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->mHasTintBlendMode:Z

    return-void
.end method

.method public final setMHasTintList(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->mHasTintList:Z

    return-void
.end method

.method public final setMTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->mTintBlendMode:Landroid/graphics/BlendMode;

    return-void
.end method

.method public final setMTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/AodAnalogClock$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-void
.end method
