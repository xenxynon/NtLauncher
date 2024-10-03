.class final La4/b$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La4/b;-><init>(Lc3/a;Landroid/content/Context;)V
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
.field final synthetic g:La4/b;


# direct methods
.method constructor <init>(La4/b;)V
    .locals 0

    iput-object p1, p0, La4/b$b;->g:La4/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 1

    iget-object p0, p0, La4/b$b;->g:La4/b;

    invoke-virtual {p0}, La4/b;->o()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p0

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    mul-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, La4/b$b;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
