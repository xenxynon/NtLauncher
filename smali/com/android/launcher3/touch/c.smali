.class public final synthetic Lcom/android/launcher3/touch/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/touch/AbstractStateChangeTouchController;

.field public final synthetic h:Lcom/android/launcher3/LauncherState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/touch/c;->g:Lcom/android/launcher3/touch/AbstractStateChangeTouchController;

    iput-object p2, p0, Lcom/android/launcher3/touch/c;->h:Lcom/android/launcher3/LauncherState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/touch/c;->g:Lcom/android/launcher3/touch/AbstractStateChangeTouchController;

    iget-object p0, p0, Lcom/android/launcher3/touch/c;->h:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->b(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
