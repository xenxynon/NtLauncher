.class final Landroidx/datastore/preferences/protobuf/RawMessageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/MessageInfo;


# instance fields
.field private final defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

.field private final flags:I

.field private final info:Ljava/lang/String;

.field private final objects:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const p3, 0xd800

    if-ge p1, p3, :cond_0

    :goto_0
    iput p1, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->flags:I

    goto :goto_2

    :cond_0
    and-int/lit16 p1, p1, 0x1fff

    const/16 v0, 0xd

    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, p3, :cond_1

    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v0

    or-int/2addr p1, v1

    add-int/lit8 v0, v0, 0xd

    move v1, v2

    goto :goto_1

    :cond_1
    shl-int p2, v1, v0

    or-int/2addr p1, p2

    goto :goto_0

    :goto_2
    return-void
.end method


# virtual methods
.method public getDefaultInstance()Landroidx/datastore/preferences/protobuf/MessageLite;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    return-object p0
.end method

.method getObjects()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    return-object p0
.end method

.method getStringInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    return-object p0
.end method

.method public getSyntax()Landroidx/datastore/preferences/protobuf/ProtoSyntax;
    .locals 1

    iget p0, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    sget-object p0, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->PROTO2:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->PROTO3:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    :goto_0
    return-object p0
.end method

.method public isMessageSetWireFormat()Z
    .locals 1

    iget p0, p0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->flags:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
