.class public Lt1/n;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private g:Lt1/r;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lt1/n;->g:Lt1/r;

    return-void
.end method

.method static a()Lt1/n;
    .locals 2

    new-instance v0, Lt1/n;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lt1/n;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static b()Lt1/n;
    .locals 2

    new-instance v0, Lt1/n;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lt1/n;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static c()Lt1/n;
    .locals 2

    new-instance v0, Lt1/n;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lt1/n;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static d()Lt1/n;
    .locals 2

    new-instance v0, Lt1/n;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lt1/n;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static e()Lt1/n;
    .locals 2

    new-instance v0, Lt1/n;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lt1/n;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static f()Lt1/n;
    .locals 2

    new-instance v0, Lt1/n;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lt1/n;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static h()Lt1/n;
    .locals 2

    new-instance v0, Lt1/n;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {v0, v1}, Lt1/n;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static i()Lt1/n;
    .locals 2

    new-instance v0, Lt1/n;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lt1/n;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public g(Lt1/r;)Lt1/n;
    .locals 0

    iput-object p1, p0, Lt1/n;->g:Lt1/r;

    return-object p0
.end method
