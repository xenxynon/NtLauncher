.class public final synthetic Lcom/android/launcher3/o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/LauncherAppState;

.field public final synthetic h:Lcom/android/launcher3/LauncherAppState$IconObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherAppState$IconObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/o2;->g:Lcom/android/launcher3/LauncherAppState;

    iput-object p2, p0, Lcom/android/launcher3/o2;->h:Lcom/android/launcher3/LauncherAppState$IconObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/o2;->g:Lcom/android/launcher3/LauncherAppState;

    iget-object p0, p0, Lcom/android/launcher3/o2;->h:Lcom/android/launcher3/LauncherAppState$IconObserver;

    invoke-static {v0, p0}, Lcom/android/launcher3/LauncherAppState;->b(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherAppState$IconObserver;)V

    return-void
.end method
