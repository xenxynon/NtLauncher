.class public final Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
.super Lt1/k;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/k<",
        "Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;",
        "Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;",
        ">;",
        "Lt1/s;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

.field private static volatile PARSER:Lt1/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/u<",
            "Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private itemAttributes_:Lt1/m$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-virtual {v0}, Lt1/k;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lt1/k;-><init>()V

    invoke-static {}, Lt1/k;->emptyIntList()Lt1/m$c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    return-void
.end method

.method static synthetic access$4500()Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->addItemAttributes(I)V

    return-void
.end method

.method private addItemAttributes(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->ensureItemAttributesIsMutable()V

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    invoke-interface {p0, p1}, Lt1/m$c;->addInt(I)V

    return-void
.end method

.method private ensureItemAttributesIsMutable()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    invoke-interface {v0}, Lt1/m$e;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    invoke-static {v0}, Lt1/k;->mutableCopy(Lt1/m$c;)Lt1/m$c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    :cond_0
    return-void
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-virtual {v0}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lt1/k$i;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->PARSER:Lt1/u;

    if-nez p0, :cond_1

    const-class p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    monitor-enter p0

    :try_start_0
    sget-object p1, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->PARSER:Lt1/u;

    if-nez p1, :cond_0

    new-instance p1, Lt1/k$c;

    sget-object p2, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-direct {p1, p2}, Lt1/k$c;-><init>(Lt1/k;)V

    sput-object p1, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->PARSER:Lt1/u;

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
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->PARSER:Lt1/u;

    return-object p0

    :pswitch_1
    check-cast p2, Lt1/f;

    check-cast p3, Lt1/i;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_9

    :try_start_1
    invoke-virtual {p2}, Lt1/f;->z()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_8

    const/16 v1, 0x8

    if-eq p3, v1, :cond_6

    const/16 v1, 0xa

    if-eq p3, v1, :cond_3

    invoke-virtual {p0, p3, p2}, Lt1/k;->parseUnknownField(ILt1/f;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lt1/f;->v()I

    move-result p3

    invoke-virtual {p2, p3}, Lt1/f;->h(I)I

    move-result p3

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    invoke-interface {v0}, Lt1/m$e;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lt1/f;->b()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    invoke-static {v0}, Lt1/k;->mutableCopy(Lt1/m$c;)Lt1/m$c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    :cond_4
    :goto_2
    invoke-virtual {p2}, Lt1/f;->b()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    invoke-virtual {p2}, Lt1/f;->o()I

    move-result v1

    invoke-interface {v0, v1}, Lt1/m$c;->addInt(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p2, p3}, Lt1/f;->g(I)V

    goto :goto_1

    :cond_6
    iget-object p3, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    invoke-interface {p3}, Lt1/m$e;->isModifiable()Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    invoke-static {p3}, Lt1/k;->mutableCopy(Lt1/m$c;)Lt1/m$c;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    :cond_7
    iget-object p3, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    invoke-virtual {p2}, Lt1/f;->o()I

    move-result v0

    invoke-interface {p3, v0}, Lt1/m$c;->addInt(I)V
    :try_end_1
    .catch Lt1/n; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_3
    move p1, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

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

    :goto_4
    throw p0

    :cond_9
    :pswitch_2
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object p0

    :pswitch_3
    check-cast p2, Lt1/k$j;

    check-cast p3, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    iget-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    iget-object p3, p3, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    invoke-interface {p2, p1, p3}, Lt1/k$j;->f(Lt1/m$c;Lt1/m$c;)Lt1/m$c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    sget-object p1, Lt1/k$h;->a:Lt1/k$h;

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;

    invoke-direct {p0, v0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$1;)V

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    invoke-interface {p0}, Lt1/m$e;->makeImmutable()V

    return-object v0

    :pswitch_6
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getItemAttributesList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lt1/k;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    invoke-interface {v3, v1}, Lt1/m$c;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lt1/g;->r(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->getItemAttributesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {v1}, Lt1/z;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lt1/k;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lt1/g;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lt1/m$c;

    invoke-interface {v1, v0}, Lt1/m$c;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lt1/g;->Q(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {p0, p1}, Lt1/z;->m(Lt1/g;)V

    return-void
.end method
