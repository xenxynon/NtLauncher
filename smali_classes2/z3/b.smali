.class public final synthetic Lz3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/LauncherAppState;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAppState;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz3/b;->g:Lcom/android/launcher3/LauncherAppState;

    iput-object p2, p0, Lz3/b;->h:Ljava/lang/String;

    iput-object p3, p0, Lz3/b;->i:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lz3/b;->g:Lcom/android/launcher3/LauncherAppState;

    iget-object v1, p0, Lz3/b;->h:Ljava/lang/String;

    iget-object p0, p0, Lz3/b;->i:Landroid/os/UserHandle;

    invoke-static {v0, v1, p0}, Lz3/c;->a(Lcom/android/launcher3/LauncherAppState;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method
