.class public final Ly4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly4/c;

    invoke-direct {v0}, Ly4/c;-><init>()V

    sput-object v0, Ly4/c;->a:Ly4/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 1

    const-string p0, "folderInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const-string v0, "folder_id"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Li4/c;->b:Li4/c$b;

    invoke-virtual {p1}, Li4/c$b;->a()Li4/c;

    move-result-object p1

    const-string v0, "launcher_folder_create"

    invoke-virtual {p1, v0, p0}, Li4/c;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method public final b(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 2

    const-string p0, "folderInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const-string v1, "folder_id"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p1}, Lb3/m;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const-string v1, "size"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->folderType:I

    const-string v1, "style"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->coverValue:Ljava/lang/String;

    invoke-static {v0}, La4/d;->b(Ljava/lang/String;)Ln5/k;

    move-result-object v0

    invoke-virtual {v0}, Ln5/k;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->coverValue:Ljava/lang/String;

    invoke-static {p1}, La4/d;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "nt_icon"

    goto :goto_0

    :cond_0
    const-string p1, "emoji"

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object p1, Li4/c;->b:Li4/c$b;

    invoke-virtual {p1}, Li4/c$b;->a()Li4/c;

    move-result-object p1

    const-string v0, "launcher_folder_cus"

    invoke-virtual {p1, v0, p0}, Li4/c;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method public final c(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 1

    const-string p0, "folderInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const-string v0, "folder_id"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Li4/c;->b:Li4/c$b;

    invoke-virtual {p1}, Li4/c$b;->a()Li4/c;

    move-result-object p1

    const-string v0, "launcher_folder_remove"

    invoke-virtual {p1, v0, p0}, Li4/c;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method
