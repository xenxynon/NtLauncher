.class public final Landroidx/datastore/preferences/protobuf/UInt64Value;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/UInt64ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/UInt64Value$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite<",
        "Landroidx/datastore/preferences/protobuf/UInt64Value;",
        "Landroidx/datastore/preferences/protobuf/UInt64Value$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/UInt64ValueOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/UInt64Value;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private value_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/UInt64Value;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    const-class v1, Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroidx/datastore/preferences/protobuf/UInt64Value;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/datastore/preferences/protobuf/UInt64Value;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UInt64Value;->setValue(J)V

    return-void
.end method

.method static synthetic access$200(Landroidx/datastore/preferences/protobuf/UInt64Value;)V
    .locals 0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/UInt64Value;->clearValue()V

    return-void
.end method

.method private clearValue()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/UInt64Value;->value_:J

    return-void
.end method

.method public static getDefaultInstance()Landroidx/datastore/preferences/protobuf/UInt64Value;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    return-object v0
.end method

.method public static newBuilder()Landroidx/datastore/preferences/protobuf/UInt64Value$Builder;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->createBuilder()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/UInt64Value$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroidx/datastore/preferences/protobuf/UInt64Value;)Landroidx/datastore/preferences/protobuf/UInt64Value$Builder;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->createBuilder(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt64Value$Builder;

    return-object p0
.end method

.method public static of(J)Landroidx/datastore/preferences/protobuf/UInt64Value;
    .locals 1

    invoke-static {}, Landroidx/datastore/preferences/protobuf/UInt64Value;->newBuilder()Landroidx/datastore/preferences/protobuf/UInt64Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/UInt64Value$Builder;->setValue(J)Landroidx/datastore/preferences/protobuf/UInt64Value$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/UInt64Value;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/UInt64Value;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/UInt64Value;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/UInt64Value;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/UInt64Value;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/UInt64Value;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/UInt64Value;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/UInt64Value;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/UInt64Value;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/UInt64Value;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom([B)Landroidx/datastore/preferences/protobuf/UInt64Value;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[B)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parseFrom([BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/UInt64Value;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/UInt64Value;

    return-object p0
.end method

.method public static parser()Landroidx/datastore/preferences/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/protobuf/UInt64Value;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->getParserForType()Landroidx/datastore/preferences/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setValue(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/datastore/preferences/protobuf/UInt64Value;->value_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Landroidx/datastore/preferences/protobuf/UInt64Value$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Landroidx/datastore/preferences/protobuf/UInt64Value;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Landroidx/datastore/preferences/protobuf/UInt64Value;

    monitor-enter p1

    :try_start_0
    sget-object p0, Landroidx/datastore/preferences/protobuf/UInt64Value;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    sput-object p0, Landroidx/datastore/preferences/protobuf/UInt64Value;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    :pswitch_3
    sget-object p0, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p2, "value_"

    aput-object p2, p0, p1

    const-string p1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0003"

    sget-object p2, Landroidx/datastore/preferences/protobuf/UInt64Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-static {p2, p1, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->newMessageInfo(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Landroidx/datastore/preferences/protobuf/UInt64Value$Builder;

    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/UInt64Value$Builder;-><init>(Landroidx/datastore/preferences/protobuf/UInt64Value$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Landroidx/datastore/preferences/protobuf/UInt64Value;

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/UInt64Value;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValue()J
    .locals 2

    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/UInt64Value;->value_:J

    return-wide v0
.end method
