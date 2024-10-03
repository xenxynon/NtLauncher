.class public final Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
.super Lt1/k;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;,
        Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/k<",
        "Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;",
        "Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;",
        ">;",
        "Lt1/s;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

.field private static volatile PARSER:Lt1/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/u<",
            "Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final itemAttributes_converter_:Lt1/m$d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/m$d$a<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/logger/LauncherAtom$Attribute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

.field private isKidsMode_:Z

.field private isWork_:Z

.field private itemAttributes_:Lt1/m$c;

.field private itemCase_:I

.field private item_:Ljava/lang/Object;

.field private rank_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$1;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_converter_:Lt1/m$d$a;

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lt1/k;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lt1/k;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    invoke-static {}, Lt1/k;->emptyIntList()Lt1/m$c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    return-void
.end method

.method static synthetic access$000()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setShortcut(Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setWidget(Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Slice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setApplication(Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setRank(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setIsWork(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Attribute;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->addItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$Attribute;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setIsKidsMode(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->setTask(Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;)V

    return-void
.end method

.method private addItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$Attribute;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->ensureItemAttributesIsMutable()V

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->getNumber()I

    move-result p1

    invoke-interface {p0, p1}, Lt1/m$c;->addInt(I)V

    return-void
.end method

.method private ensureItemAttributesIsMutable()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    invoke-interface {v0}, Lt1/m$e;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    invoke-static {v0}, Lt1/k;->mutableCopy(Lt1/m$c;)Lt1/m$c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    :cond_0
    return-void
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {v0}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    return-object v0
.end method

.method private setApplication(Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    return-void
.end method

.method private setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    return-void
.end method

.method private setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    return-void
.end method

.method private setFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    const/16 p1, 0x9

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    return-void
.end method

.method private setIsKidsMode(Z)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    iput-boolean p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isKidsMode_:Z

    return-void
.end method

.method private setIsWork(Z)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    iput-boolean p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isWork_:Z

    return-void
.end method

.method private setRank(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->rank_:I

    return-void
.end method

.method private setShortcut(Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    return-void
.end method

.method private setSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    const/16 p1, 0xa

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    return-void
.end method

.method private setTask(Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    return-void
.end method

.method private setWidget(Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lt1/k$i;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0xb

    const/16 v1, 0xa

    const/16 v2, 0x9

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->PARSER:Lt1/u;

    if-nez p0, :cond_1

    const-class p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    monitor-enter p0

    :try_start_0
    sget-object p1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->PARSER:Lt1/u;

    if-nez p1, :cond_0

    new-instance p1, Lt1/k$c;

    sget-object p2, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-direct {p1, p2}, Lt1/k$c;-><init>(Lt1/k;)V

    sput-object p1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->PARSER:Lt1/u;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->PARSER:Lt1/u;

    return-object p0

    :pswitch_1
    check-cast p2, Lt1/f;

    check-cast p3, Lt1/i;

    :cond_2
    :goto_1
    if-nez v6, :cond_18

    :try_start_1
    invoke-virtual {p2}, Lt1/f;->z()I

    move-result p1

    const/16 v9, 0xc

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1, p2}, Lt1/k;->parseUnknownField(ILt1/f;)Z

    move-result p1

    goto/16 :goto_c

    :sswitch_0
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    invoke-virtual {p2}, Lt1/f;->i()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isKidsMode_:Z

    goto :goto_1

    :sswitch_1
    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    invoke-interface {p1}, Lt1/m$e;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    invoke-static {p1}, Lt1/k;->mutableCopy(Lt1/m$c;)Lt1/m$c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    :cond_3
    invoke-virtual {p2}, Lt1/f;->v()I

    move-result p1

    invoke-virtual {p2, p1}, Lt1/f;->h(I)I

    move-result p1

    :goto_2
    invoke-virtual {p2}, Lt1/f;->b()I

    move-result v10

    if-lez v10, :cond_5

    invoke-virtual {p2}, Lt1/f;->k()I

    move-result v10

    invoke-static {v10}, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    move-result-object v11

    if-nez v11, :cond_4

    invoke-super {p0, v9, v10}, Lt1/k;->mergeVarintField(II)V

    goto :goto_2

    :cond_4
    iget-object v11, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    invoke-interface {v11, v10}, Lt1/m$c;->addInt(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p2, p1}, Lt1/f;->g(I)V

    goto :goto_1

    :sswitch_2
    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    invoke-interface {p1}, Lt1/m$e;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    invoke-static {p1}, Lt1/k;->mutableCopy(Lt1/m$c;)Lt1/m$c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    :cond_6
    invoke-virtual {p2}, Lt1/f;->k()I

    move-result p1

    invoke-static {p1}, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    move-result-object v10

    if-nez v10, :cond_7

    invoke-super {p0, v9, p1}, Lt1/k;->mergeVarintField(II)V

    goto :goto_1

    :cond_7
    iget-object v9, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    invoke-interface {v9, p1}, Lt1/m$c;->addInt(I)V

    goto :goto_1

    :sswitch_3
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-virtual {p1}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;

    goto :goto_3

    :cond_8
    move-object p1, v7

    :goto_3
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->parser()Lt1/u;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    if-eqz p1, :cond_9

    check-cast v9, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-virtual {p1, v9}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {p1}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    :cond_9
    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    goto/16 :goto_1

    :sswitch_4
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    if-ne p1, v1, :cond_a

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-virtual {p1}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;

    goto :goto_4

    :cond_a
    move-object p1, v7

    :goto_4
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->parser()Lt1/u;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    if-eqz p1, :cond_b

    check-cast v9, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-virtual {p1, v9}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {p1}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    :cond_b
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    goto/16 :goto_1

    :sswitch_5
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    if-ne p1, v2, :cond_c

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {p1}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    goto :goto_5

    :cond_c
    move-object p1, v7

    :goto_5
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->parser()Lt1/u;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    if-eqz p1, :cond_d

    check-cast v9, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {p1, v9}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {p1}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    :cond_d
    iput v2, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    goto/16 :goto_1

    :sswitch_6
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    const/16 v9, 0x200

    and-int/2addr p1, v9

    if-ne p1, v9, :cond_e

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {p1}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    goto :goto_6

    :cond_e
    move-object p1, v7

    :goto_6
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->parser()Lt1/u;

    move-result-object v10

    invoke-virtual {p2, v10, p3}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    iput-object v10, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v10}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {p1}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    :cond_f
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/2addr p1, v9

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    goto/16 :goto_1

    :sswitch_7
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    invoke-virtual {p2}, Lt1/f;->i()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isWork_:Z

    goto/16 :goto_1

    :sswitch_8
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    invoke-virtual {p2}, Lt1/f;->o()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->rank_:I

    goto/16 :goto_1

    :sswitch_9
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    if-ne p1, v3, :cond_10

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {p1}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$Widget$Builder;

    goto :goto_7

    :cond_10
    move-object p1, v7

    :goto_7
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->parser()Lt1/u;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    if-eqz p1, :cond_11

    check-cast v9, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {p1, v9}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {p1}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    :cond_11
    iput v3, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    goto/16 :goto_1

    :sswitch_a
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    if-ne p1, v4, :cond_12

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-virtual {p1}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$Shortcut$Builder;

    goto :goto_8

    :cond_12
    move-object p1, v7

    :goto_8
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->parser()Lt1/u;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    if-eqz p1, :cond_13

    check-cast v9, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-virtual {p1, v9}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {p1}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    :cond_13
    iput v4, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    goto/16 :goto_1

    :sswitch_b
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    if-ne p1, v5, :cond_14

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {p1}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$Task$Builder;

    goto :goto_9

    :cond_14
    move-object p1, v7

    :goto_9
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Task;->parser()Lt1/u;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    if-eqz p1, :cond_15

    check-cast v9, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {p1, v9}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {p1}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    :cond_15
    iput v5, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    goto/16 :goto_1

    :sswitch_c
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    if-ne p1, v8, :cond_16

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-virtual {p1}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    goto :goto_a

    :cond_16
    move-object p1, v7

    :goto_a
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Application;->parser()Lt1/u;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    if-eqz p1, :cond_17

    check-cast v9, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-virtual {p1, v9}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {p1}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    :cond_17
    iput v8, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I
    :try_end_1
    .catch Lt1/n; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_b
    :sswitch_d
    move v6, v8

    goto/16 :goto_1

    :goto_c
    if-nez p1, :cond_2

    goto :goto_b

    :catchall_1
    move-exception p0

    goto :goto_d

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lt1/n;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lt1/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lt1/n;->g(Lt1/r;)Lt1/n;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lt1/n;->g(Lt1/r;)Lt1/n;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_d
    throw p0

    :cond_18
    :pswitch_2
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object p0

    :pswitch_3
    check-cast p2, Lt1/k$j;

    check-cast p3, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasRank()Z

    move-result p1

    iget v7, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->rank_:I

    invoke-virtual {p3}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasRank()Z

    move-result v9

    iget v10, p3, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->rank_:I

    invoke-interface {p2, p1, v7, v9, v10}, Lt1/k$j;->c(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->rank_:I

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasIsWork()Z

    move-result p1

    iget-boolean v7, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isWork_:Z

    invoke-virtual {p3}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasIsWork()Z

    move-result v9

    iget-boolean v10, p3, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isWork_:Z

    invoke-interface {p2, p1, v7, v9, v10}, Lt1/k$j;->j(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isWork_:Z

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    iget-object v7, p3, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-interface {p2, p1, v7}, Lt1/k$j;->i(Lt1/r;Lt1/r;)Lt1/r;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    iget-object v7, p3, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    invoke-interface {p2, p1, v7}, Lt1/k$j;->f(Lt1/m$c;Lt1/m$c;)Lt1/m$c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasIsKidsMode()Z

    move-result p1

    iget-boolean v7, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isKidsMode_:Z

    invoke-virtual {p3}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->hasIsKidsMode()Z

    move-result v9

    iget-boolean v10, p3, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isKidsMode_:Z

    invoke-interface {p2, p1, v7, v9, v10}, Lt1/k$j;->j(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isKidsMode_:Z

    sget-object p1, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$android$launcher3$logger$LauncherAtom$ItemInfo$ItemCase:[I

    invoke-virtual {p3}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget p1, p1, v7

    packed-switch p1, :pswitch_data_1

    goto :goto_f

    :pswitch_4
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    if-eqz p1, :cond_19

    move v6, v8

    :cond_19
    invoke-interface {p2, v6}, Lt1/k$j;->b(Z)V

    goto :goto_f

    :pswitch_5
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    if-ne p1, v0, :cond_1a

    goto :goto_e

    :pswitch_6
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    if-ne p1, v1, :cond_1a

    goto :goto_e

    :pswitch_7
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    if-ne p1, v2, :cond_1a

    goto :goto_e

    :pswitch_8
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    if-ne p1, v3, :cond_1a

    goto :goto_e

    :pswitch_9
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    if-ne p1, v4, :cond_1a

    goto :goto_e

    :pswitch_a
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    if-ne p1, v5, :cond_1a

    goto :goto_e

    :pswitch_b
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    if-ne p1, v8, :cond_1a

    :goto_e
    move v6, v8

    :cond_1a
    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    iget-object v0, p3, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    invoke-interface {p2, v6, p1, v0}, Lt1/k$j;->l(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    :goto_f
    sget-object p1, Lt1/k$h;->a:Lt1/k$h;

    if-ne p2, p1, :cond_1c

    iget p1, p3, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    if-eqz p1, :cond_1b

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    :cond_1b
    iget p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    iget p2, p3, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    :cond_1c
    return-object p0

    :pswitch_c
    new-instance p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    invoke-direct {p0, v7}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$1;)V

    return-object p0

    :pswitch_d
    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    invoke-interface {p0}, Lt1/m$e;->makeImmutable()V

    return-object v7

    :pswitch_e
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object p0

    :pswitch_f
    new-instance p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_c
        0x12 -> :sswitch_b
        0x1a -> :sswitch_a
        0x22 -> :sswitch_9
        0x28 -> :sswitch_8
        0x30 -> :sswitch_7
        0x3a -> :sswitch_6
        0x4a -> :sswitch_5
        0x52 -> :sswitch_4
        0x5a -> :sswitch_3
        0x60 -> :sswitch_2
        0x62 -> :sswitch_1
        0x68 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getApplication()Lcom/android/launcher3/logger/LauncherAtom$Application;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Application;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Application;

    move-result-object p0

    return-object p0
.end method

.method public getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->containerInfo_:Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getFolderIcon()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    move-result-object p0

    return-object p0
.end method

.method public getIsKidsMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isKidsMode_:Z

    return p0
.end method

.method public getIsWork()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isWork_:Z

    return p0
.end method

.method public getItemAttributesList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/logger/LauncherAtom$Attribute;",
            ">;"
        }
    .end annotation

    new-instance v0, Lt1/m$d;

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_converter_:Lt1/m$d$a;

    invoke-direct {v0, p0, v1}, Lt1/m$d;-><init>(Ljava/util/List;Lt1/m$d$a;)V

    return-object v0
.end method

.method public getItemCase()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    invoke-static {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object p0

    return-object p0
.end method

.method public getRank()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->rank_:I

    return p0
.end method

.method public getSearchActionItem()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    move-result-object p0

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Lt1/k;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-static {v2, v0}, Lt1/g;->v(ILt1/r;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-static {v4, v3}, Lt1/g;->v(ILt1/r;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    iget v3, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-static {v4, v3}, Lt1/g;->v(ILt1/r;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    iget v3, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-static {v4, v3}, Lt1/g;->v(ILt1/r;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    iget v3, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x5

    iget v4, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->rank_:I

    invoke-static {v3, v4}, Lt1/g;->q(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_5
    iget v3, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    const/16 v4, 0x100

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_6

    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isWork_:Z

    invoke-static {v3, v4}, Lt1/g;->e(IZ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_6
    iget v3, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    const/16 v4, 0x200

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7

    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lt1/g;->v(ILt1/r;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_7
    iget v3, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-static {v4, v3}, Lt1/g;->v(ILt1/r;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_8
    iget v3, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-static {v4, v3}, Lt1/g;->v(ILt1/r;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_9
    iget v3, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_a

    iget-object v3, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v4, v3}, Lt1/g;->v(ILt1/r;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_a
    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    iget-object v4, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    invoke-interface {v4, v1}, Lt1/m$c;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lt1/g;->j(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isKidsMode_:Z

    invoke-static {v1, v2}, Lt1/g;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {v1}, Lt1/z;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lt1/k;->memoizedSerializedSize:I

    return v0
.end method

.method public getShortcut()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    move-result-object p0

    return-object p0
.end method

.method public getSlice()Lcom/android/launcher3/logger/LauncherAtom$Slice;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Slice;

    move-result-object p0

    return-object p0
.end method

.method public getTask()Lcom/android/launcher3/logger/LauncherAtom$Task;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Task;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Task;

    move-result-object p0

    return-object p0
.end method

.method public getWidget()Lcom/android/launcher3/logger/LauncherAtom$Widget;
    .locals 2

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Widget;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$Widget;

    move-result-object p0

    return-object p0
.end method

.method public hasContainerInfo()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    const/16 v0, 0x200

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasIsKidsMode()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    const/16 v0, 0x400

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasIsWork()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    const/16 v0, 0x100

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasRank()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTask()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public writeTo(Lt1/g;)V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Application;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_0
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Task;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_1
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Shortcut;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_2
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Widget;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_3
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->rank_:I

    invoke-virtual {p1, v0, v1}, Lt1/g;->Q(II)V

    :cond_4
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isWork_:Z

    invoke-virtual {p1, v0, v1}, Lt1/g;->K(IZ)V

    :cond_5
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lt1/g;->S(ILt1/r;)V

    :cond_6
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_7
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_8
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->item_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_9
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->itemAttributes_:Lt1/m$c;

    invoke-interface {v2, v0}, Lt1/m$c;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lt1/g;->M(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_a
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;->isKidsMode_:Z

    invoke-virtual {p1, v0, v1}, Lt1/g;->K(IZ)V

    :cond_b
    iget-object p0, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {p0, p1}, Lt1/z;->m(Lt1/g;)V

    return-void
.end method
