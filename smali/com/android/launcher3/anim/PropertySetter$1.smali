.class Lcom/android/launcher3/anim/PropertySetter$1;
.super Lcom/android/launcher3/anim/PropertySetter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/PropertySetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/anim/PropertySetter;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Landroid/animation/Animator;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    return-void
.end method
