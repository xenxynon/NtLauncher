.class public final Lcom/nothing/cardparser/exception/UnExpectedInfoTypeParserException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/nothing/cardparser/exception/UnExpectedInfoTypeParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide p1, -0x61a0fa609923bf43L

    iput-wide p1, p0, Lcom/nothing/cardparser/exception/UnExpectedInfoTypeParserException;->serialVersionUID:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/i;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/nothing/cardparser/exception/UnExpectedInfoTypeParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getSerialVersionUID()J
    .locals 2

    iget-wide v0, p0, Lcom/nothing/cardparser/exception/UnExpectedInfoTypeParserException;->serialVersionUID:J

    return-wide v0
.end method
