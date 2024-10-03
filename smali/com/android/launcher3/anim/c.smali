.class public final synthetic Lcom/android/launcher3/anim/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/anim/AnimationSuccessListener;

.field public final synthetic h:Landroid/animation/Animator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/anim/AnimationSuccessListener;Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/c;->g:Lcom/android/launcher3/anim/AnimationSuccessListener;

    iput-object p2, p0, Lcom/android/launcher3/anim/c;->h:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/anim/c;->g:Lcom/android/launcher3/anim/AnimationSuccessListener;

    iget-object p0, p0, Lcom/android/launcher3/anim/c;->h:Landroid/animation/Animator;

    invoke-static {v0, p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;->b(Lcom/android/launcher3/anim/AnimationSuccessListener;Landroid/animation/Animator;)V

    return-void
.end method
