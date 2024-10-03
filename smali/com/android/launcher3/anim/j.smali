.class public final synthetic Lcom/android/launcher3/anim/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/j;->g:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/anim/j;->g:Ljava/util/function/BiConsumer;

    check-cast p1, Landroid/animation/Animator;

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->a(Ljava/util/function/BiConsumer;Landroid/animation/Animator;)V

    return-void
.end method
