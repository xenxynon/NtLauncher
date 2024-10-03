.class final Lc3/a$e;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc3/a;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;Ly5/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lc3/a;


# direct methods
.method constructor <init>(Lc3/a;)V
    .locals 0

    iput-object p1, p0, Lc3/a$e;->g:Lc3/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 1

    iget-object p0, p0, Lc3/a$e;->g:Lc3/a;

    invoke-static {p0}, Lc3/a;->a(Lc3/a;)Lcom/android/launcher3/views/ActivityContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    mul-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lc3/a$e;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
