.class Landroidx/datastore/preferences/protobuf/RopeByteString$1;
.super Landroidx/datastore/preferences/protobuf/ByteString$AbstractByteIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/preferences/protobuf/RopeByteString;->iterator()Landroidx/datastore/preferences/protobuf/ByteString$ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field current:Landroidx/datastore/preferences/protobuf/ByteString$ByteIterator;

.field final pieces:Landroidx/datastore/preferences/protobuf/RopeByteString$PieceIterator;

.field final synthetic this$0:Landroidx/datastore/preferences/protobuf/RopeByteString;


# direct methods
.method constructor <init>(Landroidx/datastore/preferences/protobuf/RopeByteString;)V
    .locals 2

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$1;->this$0:Landroidx/datastore/preferences/protobuf/RopeByteString;

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ByteString$AbstractByteIterator;-><init>()V

    new-instance v0, Landroidx/datastore/preferences/protobuf/RopeByteString$PieceIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/RopeByteString$PieceIterator;-><init>(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/RopeByteString$1;)V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$1;->pieces:Landroidx/datastore/preferences/protobuf/RopeByteString$PieceIterator;

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/RopeByteString$1;->nextPiece()Landroidx/datastore/preferences/protobuf/ByteString$ByteIterator;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$1;->current:Landroidx/datastore/preferences/protobuf/ByteString$ByteIterator;

    return-void
.end method

.method private nextPiece()Landroidx/datastore/preferences/protobuf/ByteString$ByteIterator;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$1;->pieces:Landroidx/datastore/preferences/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$1;->pieces:Landroidx/datastore/preferences/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/RopeByteString$PieceIterator;->next()Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->iterator()Landroidx/datastore/preferences/protobuf/ByteString$ByteIterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$1;->current:Landroidx/datastore/preferences/protobuf/ByteString$ByteIterator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextByte()B
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$1;->current:Landroidx/datastore/preferences/protobuf/ByteString$ByteIterator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$1;->current:Landroidx/datastore/preferences/protobuf/ByteString$ByteIterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/RopeByteString$1;->nextPiece()Landroidx/datastore/preferences/protobuf/ByteString$ByteIterator;

    move-result-object v1

    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/RopeByteString$1;->current:Landroidx/datastore/preferences/protobuf/ByteString$ByteIterator;

    :cond_0
    return v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
