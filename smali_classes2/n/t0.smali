.class public final synthetic Ln/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/model/ItemInstallQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ItemInstallQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/t0;->g:Lcom/android/launcher3/model/ItemInstallQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ln/t0;->g:Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-static {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->h(Lcom/android/launcher3/model/ItemInstallQueue;)V

    return-void
.end method
