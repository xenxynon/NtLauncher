.class public final Lcom/android/launcher3/tracing/LauncherTraceProto;
.super Lt1/k;
.source "SourceFile"

# interfaces
.implements Lt1/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/k<",
        "Lcom/android/launcher3/tracing/LauncherTraceProto;",
        "Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;",
        ">;",
        "Lt1/s;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

.field private static volatile PARSER:Lt1/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/u<",
            "Lcom/android/launcher3/tracing/LauncherTraceProto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private touchInteractionService_:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/LauncherTraceProto;-><init>()V

    sput-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-virtual {v0}, Lt1/k;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lt1/k;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1

    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/tracing/LauncherTraceProto;Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/tracing/LauncherTraceProto;->setTouchInteractionService(Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/tracing/LauncherTraceProto;
    .locals 1

    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;
    .locals 1

    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-virtual {v0}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;

    return-object v0
.end method

.method public static parser()Lt1/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt1/u<",
            "Lcom/android/launcher3/tracing/LauncherTraceProto;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-virtual {v0}, Lt1/k;->getParserForType()Lt1/u;

    move-result-object v0

    return-object v0
.end method

.method private setTouchInteractionService(Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;)V
    .locals 0

    invoke-virtual {p1}, Lt1/k$b;->build()Lt1/k;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    iput-object p1, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->touchInteractionService_:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    iget p1, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lt1/k$i;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/android/launcher3/tracing/LauncherTraceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->PARSER:Lt1/u;

    if-nez p0, :cond_1

    const-class p0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    monitor-enter p0

    :try_start_0
    sget-object p1, Lcom/android/launcher3/tracing/LauncherTraceProto;->PARSER:Lt1/u;

    if-nez p1, :cond_0

    new-instance p1, Lt1/k$c;

    sget-object p2, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-direct {p1, p2}, Lt1/k$c;-><init>(Lt1/k;)V

    sput-object p1, Lcom/android/launcher3/tracing/LauncherTraceProto;->PARSER:Lt1/u;

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
    sget-object p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->PARSER:Lt1/u;

    return-object p0

    :pswitch_1
    check-cast p2, Lt1/f;

    check-cast p3, Lt1/i;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_7

    :try_start_1
    invoke-virtual {p2}, Lt1/f;->z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    const/16 v3, 0xa

    if-eq v1, v3, :cond_3

    invoke-virtual {p0, v1, p2}, Lt1/k;->parseUnknownField(ILt1/f;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_3

    :cond_3
    iget v1, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->touchInteractionService_:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-virtual {v1}, Lt1/k;->toBuilder()Lt1/k$b;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/tracing/TouchInteractionServiceProto$Builder;

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    invoke-static {}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->parser()Lt1/u;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lt1/f;->q(Lt1/u;Lt1/i;)Lt1/r;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    iput-object v3, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->touchInteractionService_:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v3}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    invoke-virtual {v1}, Lt1/k$b;->buildPartial()Lt1/k;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    iput-object v1, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->touchInteractionService_:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    :cond_5
    iget v1, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I
    :try_end_1
    .catch Lt1/n; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
    :goto_3
    move p1, v2

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

    :cond_7
    :pswitch_2
    sget-object p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object p0

    :pswitch_3
    check-cast p2, Lt1/k$j;

    check-cast p3, Lcom/android/launcher3/tracing/LauncherTraceProto;

    iget-object p1, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->touchInteractionService_:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    iget-object v0, p3, Lcom/android/launcher3/tracing/LauncherTraceProto;->touchInteractionService_:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    invoke-interface {p2, p1, v0}, Lt1/k$j;->i(Lt1/r;Lt1/r;)Lt1/r;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    iput-object p1, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->touchInteractionService_:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    sget-object p1, Lt1/k$h;->a:Lt1/k$h;

    if-ne p2, p1, :cond_8

    iget p1, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I

    iget p2, p3, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I

    :cond_8
    return-object p0

    :pswitch_4
    new-instance p0, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;

    invoke-direct {p0, v0}, Lcom/android/launcher3/tracing/LauncherTraceProto$Builder;-><init>(Lcom/android/launcher3/tracing/LauncherTraceProto$1;)V

    return-object p0

    :pswitch_5
    return-object v0

    :pswitch_6
    sget-object p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/LauncherTraceProto;

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/android/launcher3/tracing/LauncherTraceProto;

    invoke-direct {p0}, Lcom/android/launcher3/tracing/LauncherTraceProto;-><init>()V

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

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lt1/k;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceProto;->getTouchInteractionService()Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    move-result-object v1

    invoke-static {v2, v1}, Lt1/g;->v(ILt1/r;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {v1}, Lt1/z;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lt1/k;->memoizedSerializedSize:I

    return v0
.end method

.method public getTouchInteractionService()Lcom/android/launcher3/tracing/TouchInteractionServiceProto;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->touchInteractionService_:Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/launcher3/tracing/TouchInteractionServiceProto;->getDefaultInstance()Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public writeTo(Lt1/g;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/tracing/LauncherTraceProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/tracing/LauncherTraceProto;->getTouchInteractionService()Lcom/android/launcher3/tracing/TouchInteractionServiceProto;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lt1/g;->S(ILt1/r;)V

    :cond_0
    iget-object p0, p0, Lt1/k;->unknownFields:Lt1/z;

    invoke-virtual {p0, p1}, Lt1/z;->m(Lt1/g;)V

    return-void
.end method
