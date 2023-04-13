.class public Lcom/amazon/device/ads/Parsers$IntegerParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/Parsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntegerParser"
.end annotation


# instance fields
.field private defaultValue:I

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private parseErrorLogMessage:Ljava/lang/String;

.field private parseErrorLogTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/Parsers$IntegerParser;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/Parsers$IntegerParser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)I
    .locals 3

    iget v0, p0, Lcom/amazon/device/ads/Parsers$IntegerParser;->defaultValue:I

    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/amazon/device/ads/Parsers$IntegerParser;->parseErrorLogTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/device/ads/Parsers$IntegerParser;->parseErrorLogMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/device/ads/Parsers$IntegerParser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    iget-object v2, p0, Lcom/amazon/device/ads/Parsers$IntegerParser;->parseErrorLogMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDefaultValue(I)Lcom/amazon/device/ads/Parsers$IntegerParser;
    .locals 0

    iput p1, p0, Lcom/amazon/device/ads/Parsers$IntegerParser;->defaultValue:I

    return-object p0
.end method

.method public setParseErrorLogMessage(Ljava/lang/String;)Lcom/amazon/device/ads/Parsers$IntegerParser;
    .locals 0

    iput-object p1, p0, Lcom/amazon/device/ads/Parsers$IntegerParser;->parseErrorLogMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setParseErrorLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/Parsers$IntegerParser;
    .locals 2

    iput-object p1, p0, Lcom/amazon/device/ads/Parsers$IntegerParser;->parseErrorLogTag:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/device/ads/Parsers$IntegerParser;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    iget-object v1, p0, Lcom/amazon/device/ads/Parsers$IntegerParser;->parseErrorLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    return-object p0
.end method
