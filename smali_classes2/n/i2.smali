.class public final synthetic Ln/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/model/PackageInstallStateChangedTask;

.field public final synthetic h:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/PackageInstallStateChangedTask;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/i2;->g:Lcom/android/launcher3/model/PackageInstallStateChangedTask;

    iput-object p2, p0, Ln/i2;->h:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ln/i2;->g:Lcom/android/launcher3/model/PackageInstallStateChangedTask;

    iget-object p0, p0, Ln/i2;->h:Ljava/util/HashSet;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->o(Lcom/android/launcher3/model/PackageInstallStateChangedTask;Ljava/util/HashSet;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method
