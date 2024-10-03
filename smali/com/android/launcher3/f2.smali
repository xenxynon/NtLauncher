.class public final synthetic Lcom/android/launcher3/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Ls3/e;


# direct methods
.method public synthetic constructor <init>(Ls3/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/f2;->g:Ls3/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/f2;->g:Ls3/e;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->h(Ls3/e;)V

    return-void
.end method
