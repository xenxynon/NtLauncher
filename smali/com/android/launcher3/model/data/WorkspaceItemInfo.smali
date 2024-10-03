.class public Lcom/android/launcher3/model/data/WorkspaceItemInfo;
.super Lcom/android/launcher3/model/data/ItemInfoWithIcon;
.source "SourceFile"


# instance fields
.field public disabledMessage:Ljava/lang/CharSequence;

.field public intent:Landroid/content/Intent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public options:I

.field private personKeys:[Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>()V

    sget-object v0, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->personKeys:[Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>()V

    sget-object v0, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->personKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    sget-object v0, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->personKeys:[Ljava/lang/String;

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    sget-object v0, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->personKeys:[Ljava/lang/String;

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    iput v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    iget-object p1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->personKeys:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->personKeys:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic h(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->lambda$updateFromDeepShortcutInfo$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateFromDeepShortcutInfo$0(I)[Ljava/lang/String;
    .locals 0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->clone()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 1

    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->clone()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDeepShortcutId()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "shortcut_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public getPersonKeys()[Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->personKeys:[Ljava/lang/String;

    return-object p0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 3

    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "."

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_2
    return-object v0
.end method

.method public hasPromiseIconUi()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasStatusFlag(I)Z
    .locals 0

    iget p0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDisabledVersionLower()Z
    .locals 0

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPromise()Z
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result p0

    return p0
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 3
    .param p1    # Lcom/android/launcher3/util/ContentWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Landroid/content/Intent;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->options:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "restored"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/util/ContentWriter;->putIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ContentWriter;

    :cond_0
    return-void
.end method

.method public updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/pm/ShortcutInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->makeIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit8 p2, p2, -0x11

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit8 p2, p2, 0x10

    :goto_0
    iput p2, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->disabledMessage:Ljava/lang/CharSequence;

    sget-boolean p2, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result p2

    const/16 v0, 0x64

    if-ne p2, v0, :cond_2

    iget p2, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit16 p2, p2, 0x1000

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 p2, p2, -0x1001

    :goto_1
    iput p2, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/ApiWrapper;->getPersons(Landroid/content/pm/ShortcutInfo;)[Landroid/app/Person;

    move-result-object p1

    array-length p2, p1

    if-nez p2, :cond_3

    sget-object p1, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_2

    :cond_3
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/model/data/k;->a:Lcom/android/launcher3/model/data/k;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/model/data/l;->a:Lcom/android/launcher3/model/data/l;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_2
    iput-object p1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->personKeys:[Ljava/lang/String;

    return-void
.end method
