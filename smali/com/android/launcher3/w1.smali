.class public final synthetic Lcom/android/launcher3/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/LauncherAnimationRunner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAnimationRunner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/w1;->g:Lcom/android/launcher3/LauncherAnimationRunner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/w1;->g:Lcom/android/launcher3/LauncherAnimationRunner;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->X(Lcom/android/launcher3/LauncherAnimationRunner;)V

    return-void
.end method
