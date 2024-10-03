.class public final synthetic Lcom/android/launcher3/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Ls3/d;


# direct methods
.method public synthetic constructor <init>(Ls3/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/e2;->g:Ls3/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/e2;->g:Ls3/d;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->c(Ls3/d;)V

    return-void
.end method
