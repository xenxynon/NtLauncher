.class public final synthetic Lcom/android/quickstep/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/LauncherPrefs;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherPrefs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/w1;->g:Lcom/android/launcher3/LauncherPrefs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/w1;->g:Lcom/android/launcher3/LauncherPrefs;

    invoke-static {p0}, Lcom/android/quickstep/BootAwarePreloader;->a(Lcom/android/launcher3/LauncherPrefs;)V

    return-void
.end method
