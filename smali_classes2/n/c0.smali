.class public final synthetic Ln/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/model/BgDataModel;

.field public final synthetic h:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/c0;->g:Lcom/android/launcher3/model/BgDataModel;

    iput-object p2, p0, Ln/c0;->h:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ln/c0;->g:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Ln/c0;->h:Landroid/content/Context;

    check-cast p1, Landroid/os/UserHandle;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/model/BgDataModel;->a(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Context;Landroid/os/UserHandle;)V

    return-void
.end method
