.class public final synthetic Lcom/android/launcher3/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/a2;->g:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/a2;->g:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->R(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method
