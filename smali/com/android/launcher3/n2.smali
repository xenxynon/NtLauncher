.class public final synthetic Lcom/android/launcher3/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/LauncherAppState;

.field public final synthetic h:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/n2;->g:Lcom/android/launcher3/LauncherAppState;

    iput-object p2, p0, Lcom/android/launcher3/n2;->h:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/n2;->g:Lcom/android/launcher3/LauncherAppState;

    iget-object p0, p0, Lcom/android/launcher3/n2;->h:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/launcher3/LauncherAppState;->p(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;)V

    return-void
.end method
