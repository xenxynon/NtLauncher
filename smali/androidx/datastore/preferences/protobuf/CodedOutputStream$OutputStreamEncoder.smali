.class final Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;
.super Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OutputStreamEncoder"
.end annotation


# instance fields
.field private final out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;-><init>(I)V

    const-string p2, "out"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    return-void
.end method

.method private doFlush()V
    .locals 4

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    return-void
.end method

.method private flushIfNotAvailable(I)V
    .locals 2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->limit:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    :cond_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    :cond_0
    return-void
.end method

.method public write(B)V
    .locals 2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->limit:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer(B)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->limit:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    sub-int v3, v1, v2

    if-lt v3, v0, :cond_0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    :goto_0
    iget p1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    goto :goto_2

    :cond_0
    sub-int/2addr v1, v2

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    invoke-virtual {p1, v3, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->limit:I

    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    :goto_1
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->limit:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    invoke-virtual {p1, v3, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v4, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->limit:I

    invoke-virtual {v1, v3, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->limit:I

    sub-int/2addr v0, v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    goto :goto_0

    :goto_2
    return-void
.end method

.method public write([BII)V
    .locals 3

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->limit:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    sub-int v2, v0, v1

    if-lt v2, p3, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    :goto_0
    iget p1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    goto :goto_1

    :cond_0
    sub-int/2addr v0, v1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->limit:I

    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->limit:I

    if-gt p3, v0, :cond_1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public writeBool(IZ)V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferTag(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer(B)V

    return-void
.end method

.method public writeByteArray(I[B)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeByteArray(I[BII)V

    return-void
.end method

.method public writeByteArray(I[BII)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    invoke-virtual {p0, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeByteArrayNoTag([BII)V

    return-void
.end method

.method public writeByteArrayNoTag([BII)V
    .locals 0

    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->write([BII)V

    return-void
.end method

.method public writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeBytesNoTag(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method public writeBytesNoTag(Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/protobuf/ByteString;->writeTo(Landroidx/datastore/preferences/protobuf/ByteOutput;)V

    return-void
.end method

.method public writeFixed32(II)V
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferTag(II)V

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferFixed32NoTag(I)V

    return-void
.end method

.method public writeFixed32NoTag(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferFixed32NoTag(I)V

    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 1

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferTag(II)V

    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferFixed64NoTag(J)V

    return-void
.end method

.method public writeFixed64NoTag(J)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferFixed64NoTag(J)V

    return-void
.end method

.method public writeInt32(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferTag(II)V

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferInt32NoTag(I)V

    return-void
.end method

.method public writeInt32NoTag(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt64NoTag(J)V

    :goto_0
    return-void
.end method

.method public writeLazy(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->write(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public writeLazy([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->write([BII)V

    return-void
.end method

.method public writeMessage(ILandroidx/datastore/preferences/protobuf/MessageLite;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessageNoTag(Landroidx/datastore/preferences/protobuf/MessageLite;)V

    return-void
.end method

.method writeMessage(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessageNoTag(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)V

    return-void
.end method

.method public writeMessageNoTag(Landroidx/datastore/preferences/protobuf/MessageLite;)V
    .locals 1

    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    invoke-interface {p1, p0}, Landroidx/datastore/preferences/protobuf/MessageLite;->writeTo(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)V

    return-void
.end method

.method writeMessageNoTag(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    invoke-virtual {v0, p2}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->getSerializedSize(Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->wrapper:Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    invoke-interface {p2, p1, p0}, Landroidx/datastore/preferences/protobuf/Schema;->writeTo(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    return-void
.end method

.method public writeMessageSetExtension(ILandroidx/datastore/preferences/protobuf/MessageLite;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    invoke-virtual {p0, v1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeMessage(ILandroidx/datastore/preferences/protobuf/MessageLite;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    return-void
.end method

.method public writeRawBytes(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->write(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method public writeRawMessageSetExtension(ILandroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32(II)V

    invoke-virtual {p0, v1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeStringNoTag(Ljava/lang/String;)V

    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int v2, v1, v0

    iget v3, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->limit:I

    if-le v2, v3, :cond_0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroidx/datastore/preferences/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    invoke-virtual {p0, v1, v2, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeLazy([BII)V

    return-void

    :cond_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_1

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I
    :try_end_0
    .catch Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    :try_start_1
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v4, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->limit:I

    sub-int/2addr v4, v1

    invoke-static {p1, v3, v1, v4}, Landroidx/datastore/preferences/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferUInt32NoTag(I)V

    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferUInt32NoTag(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    invoke-static {p1, v0, v1, v3}, Landroidx/datastore/preferences/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    :goto_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I
    :try_end_1
    .catch Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    iget v3, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    throw v0
    :try_end_2
    .catch Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->inefficientWriteStringNoTag(Ljava/lang/String;Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;)V

    :goto_1
    return-void
.end method

.method public writeTag(II)V
    .locals 0

    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    return-void
.end method

.method public writeUInt32(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferTag(II)V

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferUInt32NoTag(I)V

    return-void
.end method

.method public writeUInt32NoTag(I)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferUInt32NoTag(I)V

    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferTag(II)V

    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferUInt64NoTag(J)V

    return-void
.end method

.method public writeUInt64NoTag(J)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->flushIfNotAvailable(I)V

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferUInt64NoTag(J)V

    return-void
.end method
